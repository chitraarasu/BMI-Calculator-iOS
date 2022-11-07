//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bmiBrain = BMIBrain()

    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var secondSlider: UISlider!
    @IBOutlet weak var hightLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        hightLable.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLable.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
//        var secondScreen = SecondViewController()
//
//        secondScreen.result = String(result)
//
//        self.present(secondScreen, animated: true)
//
//        print(result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let height = firstSlider.value
        let weight = secondSlider.value
        
        let bmi = bmiBrain.getBMI(height, weight)
        
        if segue.identifier == "goToResult" {
            let distinationVC = segue.destination as! ResultViewController
            distinationVC.bmiValue = bmi
        }
    }
}

