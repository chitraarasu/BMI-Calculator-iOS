//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by kirshi on 11/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController{
    
    var result = "0.0"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lable = UILabel()
        
        view.backgroundColor = .red
        
        lable.text = result
        
        lable.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(lable)
    }
    
}
