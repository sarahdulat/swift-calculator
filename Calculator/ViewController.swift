//
//  ViewController.swift
//  Calculator
//
//  Created by Federico on 3/15/16.
//  Copyright © 2016 Federico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Label: UILabel!
    
    var isFirstDigit = true
    var operand1: Double = 0
    var operand = "="
    
    var displayValue: Double {
        get {
            return
                NSNumberFormatter().numberFromString(Label.text!)!.doubleValue
        }
        
        set {
            Label.text = String(format: "%2.0f", newValue)
            isFirstDigit = true
            Operation = "="
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


};