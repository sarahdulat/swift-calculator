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
    var operation = "="
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(Label.text!)!.doubleValue
        }
        
        set {
            Label.text = String(format: "%2.0f", newValue)
            isFirstDigit = true
            operation = "="
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        @IBAction func Digit(sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        Label.text = isFirstDigit ? digit : Label.text! + digit
        isFirstDigit = false
        
        }

        @IBAction func Cancel(sender: AnyObject) {
            
            displayValue = 0
            
        }
        
        @IBAction func Calculate(sender: AnyObject) {
            
            switch operation {
                
                case "/":displayValue = operand1 / displayValue
                case "*":displayValue *= operand1
                case "+":displayValue += operand1
                case "-":displayValue = operand1 - displayValue
            default:break
                
            }
            
        }
        
        @IBAction func Operations(sender: UIButton) {
            
            operation = sender.currentTitle!
            operand1 = displayValue
            isFirstDigit = true
            
        }
        
        
        
    }