//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSliderIBOutlet: UISlider!
    @IBOutlet weak var heightLabelIBOutlet: UILabel!
    @IBOutlet weak var weightSliderIBOutlet: UISlider!
    @IBOutlet weak var weightLabelIBOutlet: UILabel!
    var bmiAsString = "0.0"
    
    @IBAction func onHeightChanged(_ sender: UISlider, forEvent event: UIEvent) {
        print(sender.value)
        updateUI()
    }
    
    
    @IBAction func onWeightChanged(_ sender: UISlider, forEvent event: UIEvent) {
        print(sender.value)
        updateUI()
    }
    
    @IBAction func onCalculateButtonPressed(_ sender: UIButton) {
        let weight = weightSliderIBOutlet.value
        let height = heightSliderIBOutlet.value
        let bmi = Float(weight)/pow(height,2)
        bmiAsString = String(format:"%.2f", bmi)
        print(bmiAsString)
        performSegue(withIdentifier: "goToResultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResultSegue"){
            let destinationVC = segue.destination as! ResultViewControler
            destinationVC.bmiValue = bmiAsString
        }
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

