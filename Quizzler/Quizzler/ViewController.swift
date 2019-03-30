//
//  ViewController.swift
//  Quizzler
//
//  Created by ali mirabzadeh on 3/26/19.

//

import UIKit
import Speech // for voice recognition

class ViewController: UIViewController, SFSpeechRecognizerDelegate {
    
    //Library of images, images should be uploaded to image asset
    //let imageArr = []
    //create the question bank
    let questionBank = QuestionBank()
    var pickedAns : Bool = false
    var questionNumber: Int=0
    var scoreCounter: Int=0
   
    //declaring constant variables for voice recognititon
    //------------------------------------------------------
    //This will process the audio stream. It will give updates when the mic is receiving audio.
    let audioEngine = AVAudioEngine()
    //This will do the actual speech recognition. It can fail to recognize speech and return nil, so it’s best to make it an optional.
    let speechRecognizer: SFSpeechRecognizer? = SFSpeechRecognizer()
    /*
     Side Note: By default, the speech recognizer will detect the devices locale and in response recognize the language appropriate to that geographical location. The default language can also be set by passing in a locale argument and identifier. Like this: let speechRecognizer: SFSpeechRecognizer(locale: Locale.init(identifier: "en-US")
    */
    //This allocates speech as the user speaks in real-time and controls the buffering.
    let request = SFSpeechAudioBufferRecognitionRequest()
    //This will be used to manage, cancel, or stop the current recognition task.
    var recognitionTask: SFSpeechRecognitionTask?

    @IBOutlet weak var objectImage: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!

    
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var voiceConvertedToText: UITextField!
//    @IBAction func startListetningButton(_ sender: UIButton) {
//        self.recordAndRecognizeSpeech()
//    }
    
    @IBAction func startRecordingButton(_ sender: UIButton) {
        self.recordAndRecognizeSpeech()
    }
    @IBAction func stopRecordingButton(_ sender: UIButton) {
        self.audioEngine.stop()
        checkAnswer()
    }
    @IBOutlet var backgroundColorChange: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //nextQuestion()
    }
//    //voice recognition methods
    //------------------------------
    //It will record and process the speech as it comes in.
    // set up for the audio engine and speech recognizer
    func recordAndRecognizeSpeech(){
        let node = audioEngine.inputNode
        let recordingFormat = node.outputFormat(forBus:0)
        node.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, _ in
            self.request.append(buffer)
        }
        //prepare and start the recording using the audio engin
        audioEngine.prepare()
        do{
            try audioEngine.start()
        }catch{
            return print(error)
        }
        guard let myRecognizaer = SFSpeechRecognizer() else { fatalError("Unable to created a SFSpeechRecognizer object") }
        if !myRecognizaer.isAvailable{
            return
        }
        recognitionTask = speechRecognizer?.recognitionTask(with: request, resultHandler: { (result, error) in
            if let result = result {
                let bestString = result.bestTranscription.formattedString
                self.voiceConvertedToText.text = bestString
            }else {
                print(error)
                // Stop recognizing speech if there is a problem.
               // self.audioEngine.stop()
            }
        })
    }
    
    //update the
    func updateUI()
    {
        //store the updated score in scoreLabel, since scorecounter is int, it should be converted to
        //string with "\()"
        scoreLabel.text = "Score: \(scoreCounter)"
        //keeps track of the question number
        //progressLabel.text = "\(questionNumber+1)/ \(imageArr.count)"
    }
    

    func nextQuestion()
    {
        backgroundColorChange.backgroundColor = UIColor.blue
//        if questionNumber <= imageArr.count
//        {
//            //load the next question on the label
//            objectImage.image=UIImage.init(named: imageArr[questionNumber] as! String)
//            updateUI()
//        }
//        else
//        {
//            //pop-up alert
//            let uiAlert = UIAlertController(title: "Awesome!", message: "The game is over! Do you want to take it again", preferredStyle: .alert )
//            //pop-alert action
//            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
//                self.startOver()
//            }
//            //action for the pop-up
//            uiAlert.addAction(restartAction)
//            //present the alert to the viewer, does nothing after completion
//            present(uiAlert, animated: true, completion: nil)
//        }
    }
    //
    func checkAnswer()
    {
        //store the correct answer
        let correctAns = questionBank.list[questionNumber].answer
        if correctAns == pickedAns
        {
            scoreCounter = scoreCounter + 1
            //Used from -> https://github.com/relatedcode/ProgressHUD
            backgroundColorChange.backgroundColor = UIColor.green
        }
        else{
            //Used from -> https://github.com/relatedcode/ProgressHUD
             backgroundColorChange.backgroundColor = UIColor.red
        }
    
    }
    //when start over, the question number would be zero
    func startOver()
    {
       questionNumber=0
       nextQuestion()
    }
//    func updateImage(){
//        //use image method
//        objectImage.image=UIImage.init(named: imageArr[questionNumber] as! String)
//    }
    

    
}
