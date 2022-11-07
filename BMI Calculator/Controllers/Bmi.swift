//
//  Bmi.swift
//  BMI Calculator
//
//  Created by kirshi on 11/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct Bmi {
    var bmi: Float
    var advice: String
    var color: UIColor
    
    init(bmi: Float, advice: String, color: UIColor) {
        self.bmi = bmi
        self.advice = advice
        self.color = color
    }
}
