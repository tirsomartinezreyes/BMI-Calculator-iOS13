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
    var appModel = App()
    
    @IBAction func onHeightChanged(_ sender: UISlider, forEvent event: UIEvent) {
        appModel.setHeight(sender.value)
        updateUI()
    }
    
    
    @IBAction func onWeightChanged(_ sender: UISlider, forEvent event: UIEvent) {
        appModel.setWeight(sender.value)
        updateUI()
    }
    
    @IBAction func onCalculateButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToResultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResultSegue"){
            let destinationVC = segue.destination as! ResultViewControler
            destinationVC.appModel = appModel
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func updateUI(){
        heightLabelIBOutlet.text = appModel.getHeightAsString()
        weightLabelIBOutlet.text = appModel.getWeightAsString()
    }


}

