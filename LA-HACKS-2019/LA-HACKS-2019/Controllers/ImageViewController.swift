//
//  ImageViewController.swift
//  LA-HACKS-2019
//
//  Created by Glarence Zhao on 3/30/19.
//  Copyright © 2019 AMZ Development. All rights reserved.
//

import Foundation
import UIKit

class ImageViewController : UIViewController{
    
    @IBOutlet weak var cameraButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        CameraHandler.shared.showActionSheet(vc: self)
        CameraHandler.shared.imagePickedBlock = { (image) in
            /* get your image here */
        }
    }
}
