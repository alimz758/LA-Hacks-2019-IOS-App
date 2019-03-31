//
//  ImageViewController.swift
//

import UIKit
import Firebase

class ImageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultView: UILabel!
    let imagePicker = UIImagePickerController()
    lazy var vision = Vision.vision()
    var result = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func uploadImage(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) -> String {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = pickedImage
            let labelDetector = vision.labelDetector()
            let visionImage = VisionImage(image: pickedImage)
            
            self.resultView.text = ""
            labelDetector.detect(in: visionImage) { (labels, error) in
                guard error == nil, let labels = labels, !labels.isEmpty else {
                    self.resultView.text = "Could not label this image"
                    self.dismiss(animated: true, completion: nil)
                    return
                }
                
                for label in labels {
                    self.resultView.text = self.resultView.text! + "\(label.label) - \(label.confidence * 100.0)%\n"
                    self.result = "\(label.label) - \(label.confidence * 100.0)[0]\n"
                }
            }
        }
        dismiss(animated: true, completion: nil)
        return result
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}
