//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by kirshi on 11/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    final var bmiValue: Bmi?
    
    @IBOutlet weak var adviceLable: UILabel!
    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLable.text = String(format: "%.1f", bmiValue?.bmi ?? 0.0)
        adviceLable.text = bmiValue?.advice
        view.backgroundColor = bmiValue?.color
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
