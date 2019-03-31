//
//  Question.swift
//  Quizzler
//
//  Created by ali mirabzadeh on 3/26/19.


import Foundation


class Image
{
    let image: UIImage
    let label : String
    
    //initiallizing
    init(imagePassedWithML: UIImage, labelPassedWithML : String)
    {
        image = imagePassedWithML
        label = labelPassedWithML
    }
}
