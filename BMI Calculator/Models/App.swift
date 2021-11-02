//
//  App.swift
//  BMI Calculator
//
//  Created by Tirso Martínez on 02/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct App {
    var height:Float = 1.5
    var weight:Float = 100
   
    mutating func setHeight(_ h:Float){
        height = h
    }
    
    mutating func setWeight(_ w:Float){
        weight = w
    }
    
    func getWeightAsString() ->String{
        return  String(format:"%.0f", weight) + "Kg"
    }
    
    func getHeightAsString() ->String{
        return  String(format:"%.2f", height) + "m"
    }
    
    func getBmiAsFloat() -> Float {
        return Float(weight/pow(height,2))
    }
    
    func getBmiAsString()->String {
        return String(format:"%.2f", getBmiAsFloat())
    }
    
    func getSuggestion()->String {
        var suggestionText = ""
        switch getBmiAsFloat() {
            case ...18.5: suggestionText = "Underweight: Eat more snacks!"
            case 18.5..<25: suggestionText = "You're solid rock!!"
            case 25..<30: suggestionText = "Overweight: Take a look to food and do more exercise!"
            case 30..<35: suggestionText = "Obese: You need to take this seriously!"
            case 35...Float.greatestFiniteMagnitude: suggestionText = "Extremely Obese: You need urgency help!"
            default:suggestionText = ""
        }
        return suggestionText
    }
    
    func getBgColor()->UIColor{
        var color:UIColor = .blue
        switch getBmiAsFloat() {
        case ...18.5: color = .blue
        case 18.5..<25: color = .green
        case 25..<30: color = .orange
        case 30..<35: color = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        case 35...Float.greatestFiniteMagnitude: color = .red
        default: color = .blue}
        return color
    }
    
}
