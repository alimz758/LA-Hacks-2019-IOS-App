//
//  CustomWeatherController.swift
//  LA-HACKS-2019
//
//  Created by ali mirabzadeh on 3/30/19.
//  Copyright © 2019 AMZ Development. All rights reserved.
//

import UIKit


class CustomWeatherController: UIViewController{
    
    private var datePicker:UIDatePicker?
    
    datePicker = UIDatePciker()
    datePciker?.datePickerMode = .date
    @IBAction func dateAndTimePicker(_ sender: UIDatePicker) {
    }
    timeInputTextField.inputView = datePicker
}