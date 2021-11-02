//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSliderIBOutlet: UISlider!
    @IBOutlet weak var heightLabelIBOutlet: UILabel!
    @IBOutlet weak var weightSliderIBOutlet: UISlider!
    @IBOutlet weak var weightLabelIBOutlet: UILabel!
    
    @IBAction func onHeightChanged(_ sender: UISlider, forEvent event: UIEvent) {
        print(heightSliderIBOutlet.value)
        updateUI()
    }
    
    
    @IBAction func onWeightChanged(_ sender: UISlider, forEvent event: UIEvent) {
        print(weightSliderIBOutlet.value)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        heightLabelIBOutlet.text = String(format:"%.2f", heightSliderIBOutlet.value) + "m"
        weightLabelIBOutlet.text = String(format:"%.0f",weightSliderIBOutlet.value) + "K"
    }


}

