//
//  ViewController.swift
//  Quizzler
//
//  Created by ali mirabzadeh on 3/26/19.

//

import UIKit
import Speech
import AVFoundation
class ViewController: UIViewController, SFSpeechRecognizerDelegate,AVAudioPlayerDelegate{
    
    //Place your instance variables here
    var audioPlayer : AVAudioPlayer!
    
    // To-Do Library array should be here, items in this library have to have the same index with imageArr
    let labelArray = ["hello", "bye", "great", "good"]
    //      TO-DO    MAGE LIBRARY HERE
    // let imageArr=[]
    //create the question bank
    let questionBank = QuestionBank()
    var questionNumber: Int=0
    var scoreCounter: Int=0
    var voiceResult: String=""
    var checker: Bool = false
    
    
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))!
    
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    
    private var recognitionTask: SFSpeechRecognitionTask?
    
    private let audioEngine = AVAudioEngine()
    
    @IBOutlet weak var voiceTextField: UITextField!
    
    @IBOutlet weak var objectImage: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    
    @IBAction func start(_ sender: UIButton) {
        try! startRecording()
        recordButton.setTitle("Stop recording", for: [])
    }
    @IBAction func stop(_ sender: UIButton) {
            audioEngine.stop()
            recognitionRequest?.endAudio()
            recognitionTask = nil
            recognitionRequest = nil
            recordButton.isEnabled = false
            recordButton.setTitle("Stopping", for: .disabled)
            audioEngine.inputNode.removeTap(onBus: 0)
    }
    
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recordButton.isEnabled = false
        nextQuestion()
    }
    override public func viewDidAppear(_ animated: Bool) {
        speechRecognizer.delegate = self
        
        SFSpeechRecognizer.requestAuthorization { authStatus in
            /*
             The callback may not be called on the main thread. Add an
             operation to the main queue to update the record button's state.
             */
            OperationQueue.main.addOperation {
                switch authStatus {
                case .authorized:
                    self.recordButton.isEnabled = true
                    
                case .denied:
                    self.recordButton.isEnabled = false
                    self.recordButton.setTitle("User denied access to speech recognition", for: .disabled)
                    
                case .restricted:
                    self.recordButton.isEnabled = false
                    self.recordButton.setTitle("Speech recognition restricted on this device", for: .disabled)
                    
                case .notDetermined:
                    self.recordButton.isEnabled = false
                    self.recordButton.setTitle("Speech recognition not yet authorized", for: .disabled)
                }
            }
        }
    }
    private func startRecording() throws {
        
        // Cancel the previous task if it's running.
        if let recognitionTask = recognitionTask {
            recognitionTask.cancel()
            self.recognitionTask = nil
        }
        
        let audioSession = AVAudioSession.sharedInstance()
        try audioSession.setCategory(AVAudioSessionCategoryRecord)
        try audioSession.setMode(AVAudioSessionModeMeasurement)
        try audioSession.setActive(true, with: .notifyOthersOnDeactivation)
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        
        let inputNode = audioEngine.inputNode
        guard let recognitionRequest = recognitionRequest else { fatalError("Unable to created a SFSpeechAudioBufferRecognitionRequest object") }
        // Configure request so that results are returned before audio recording is finished
        recognitionRequest.shouldReportPartialResults = true
        
        // A recognition task represents a speech recognition session.
        // We keep a reference to the task so that it can be cancelled.
        recognitionTask = speechRecognizer.recognitionTask(with: recognitionRequest) { result, error in
            var isFinal = false
            if let result = result {
                let bestString = result.bestTranscription.formattedString.components(separatedBy: " ").first
                self.voiceTextField.text = bestString!
                self.voiceResult = bestString!.lowercased()
                isFinal = result.isFinal
                //print(self.voiceResult)
                self.checker = !self.checker
                if self.checker{
                    self.checkAnswer()
                    self.questionNumber+=1
                    self.nextQuestion()
                }
            }
            if error != nil || isFinal {
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                
                self.recognitionRequest = nil
                self.recognitionTask = nil
                
                self.recordButton.isEnabled = true
                self.recordButton.setTitle("Start Recording", for: [])
            }
            
        }
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer: AVAudioPCMBuffer, when: AVAudioTime) in
            self.recognitionRequest?.append(buffer)
        }
        audioEngine.prepare()
        try audioEngine.start()
        voiceTextField.text = "(Go ahead, I'm listening)"
    }
    
    // MARK: SFSpeechRecognizerDelegate
    
    public func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        if available {
            recordButton.isEnabled = true
            recordButton.setTitle("Start Recording", for: [])
        } else {
            recordButton.isEnabled = false
            recordButton.setTitle("Recognition not available", for: .disabled)
        }
    }

    //update the
    func updateUI()
    {
        //store the updated score in scoreLabel, since scorecounter is int, it should be converted to
        //string with "\()"
        scoreLabel.text = "Score: \(scoreCounter)"
        //keeps track of the question number
        progressLabel.text = "\(questionNumber+1)/ \(labelArray.count)"
        
    }
    
    
    func nextQuestion()
    {
        if questionNumber <= labelArray.count - 1
        {
            //load the next image
            //TO -DO
            objectImage.image=UIImage.init(named: imageArr[questionNumber])
            updateUI()
        }
        else
        {
            //pop-up alert
            let uiAlert = UIAlertController(title: "Awesome!", message: "The game is over! Do you want to take it again", preferredStyle: .alert )
            //pop-alert action
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            //action for the pop-up
            uiAlert.addAction(restartAction)
            //present the alert to the viewer, does nothing after completion
            present(uiAlert, animated: true, completion: nil)
        }
    }
    //
    func checkAnswer()
    {
        
            //store the correct answer
            let correctAns = labelArray[questionNumber]
            print("\(correctAns) \(voiceResult)")
            if correctAns == voiceResult
            {
                scoreCounter = scoreCounter + 1
                //Used from -> https://github.com/relatedcode/ProgressHUD
                do
                {
                    let rightSoundURL = Bundle.main.url(forResource: "right", withExtension: "wav")!
                    audioPlayer = try AVAudioPlayer(contentsOf: rightSoundURL)
                    guard let player = audioPlayer else { return }
                    
                    player.prepareToPlay()
                    player.play()
                    
                }
                    //catch error
                catch let error as NSError {
                    print(error.description)
                }
            }
            else{
                //Used from -> https://github.com/relatedcode/ProgressHUD
                do
                {
                    let wrongSoundURL = Bundle.main.url(forResource: "wrong", withExtension: "wav")!
                    audioPlayer = try AVAudioPlayer(contentsOf: wrongSoundURL)
                    guard let player = audioPlayer else { return }
                    
                    player.prepareToPlay()
                    player.play()
                    
                }
                    //catch error
                catch let error as NSError {
                    print(error.description)
                }
            }
        
        
        
    }
    //when start over, the question number would be zero
    func startOver()
    {
        questionNumber=0
        nextQuestion()
    }
    func updateImage(){
         o
    }
    
    
    
}
