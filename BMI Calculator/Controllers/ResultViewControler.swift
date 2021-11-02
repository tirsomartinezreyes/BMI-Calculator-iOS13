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
    @IBOutlet weak var viewIBOutlet: UIView!
    var appModel:App = App()
    
    @IBAction func onRecalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabelIBOutlet.text = appModel.getBmiAsString()
        suggestionLabelIBOutlet.text = appModel.getSuggestion()
        viewIBOutlet.backgroundColor = appModel.getBgColor()
    }
}
