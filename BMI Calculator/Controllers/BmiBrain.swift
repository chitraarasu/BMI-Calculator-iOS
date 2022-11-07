//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by kirshi on 11/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit


struct BMIBrain {
    
    var result : Bmi?
    
   mutating func getBMI(_ height: Float,_ weight: Float) -> Bmi {
        
       var bmiResult = weight / (height * height);
       
       if bmiResult < 18.5{
           result = Bmi(bmi: bmiResult, advice: "Eat more pies!", color: UIColor.blue)
       } else if bmiResult < 24.9{
           result = Bmi(bmi: bmiResult, advice: "Fit as a fiddle!", color: UIColor.green)
       } else {
           result = Bmi(bmi: bmiResult, advice: "Eat less pies!", color: UIColor.systemPink)
       }
       
       return result!;
        
    }
    
}
