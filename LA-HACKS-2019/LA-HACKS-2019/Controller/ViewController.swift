//
//  ViewController.swift
//  LA-HACKS-2019
//
//  Created by ali mirabzadeh on 3/29/19.
//  Copyright © 2019 AMZ Development. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import Firebase
import SwiftyJSON


class ViewController: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var currentLocationTemp: UILabel!
    @IBOutlet weak var weatherIconImage: UIImageView!
    
    @IBOutlet weak var weatherStatus: UILabel!
    
    @IBAction func addNewWeatherDestination(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

