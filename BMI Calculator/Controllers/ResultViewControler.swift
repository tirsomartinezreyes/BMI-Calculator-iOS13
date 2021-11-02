//
//  ResultViewControler.swift
//  BMI Calculator
//
//  Created by Tirso Martínez on 02/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewControler: UIViewController {
    @IBOutlet weak var bmiLabelIBOutlet: UILabel!
    @IBOutlet weak var suggestionLabelIBOutlet: UILabel!
    var bmiValue = "0.0"
    var suggestionText = ""
    
    @IBAction func onRecalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabelIBOutlet.text = bmiValue
        let bmiFloatValue = Float(bmiValue)!
        
        switch bmiFloatValue {
            case ..<25: suggestionText = "Eat more snacks"
            case 25: suggestionText = "You're solid rock!!"
            default: suggestionText = "I can't believe it"
        }
        
        suggestionLabelIBOutlet.text = suggestionText
    }
}
