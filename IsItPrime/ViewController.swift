//
//  ViewController.swift
//  IsItPrime
//
//  Created by Chris Chandler on 7/14/19.
//  Copyright © 2019 Chris Chandler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testValue: UITextField!
    
    @IBOutlet weak var resultString: UILabel!
    
    @IBAction func evaluateNumber2(_ sender: Any) {
        if let testString: String = testValue.text {
            if let testNumber: Int = Int(testString) {
                var i = 2
                let ubound = testNumber / 2
                var processSwitch = true
                resultString.text = "The number is prime."
                if testNumber < 1 {
                    resultString.text = "Enter a postive number greater than 0."
                } else {
                    while processSwitch {
                        if testNumber == 1 {
                            resultString.text = "1 is not prime. Evar."
                            processSwitch = false
                        } else if testNumber % i == 0 && testNumber > 2 {
                            resultString.text = "The number is not prime. First divisible number is \(String(i))."
                            processSwitch = false
                        }
                        i += 1
                        if i > ubound {
                            processSwitch = false
                        }
                    }
                }
            }
        }
    }
    @IBAction func evaluateNumber(_ sender: Any) {
        
        print("button pressed")
        
        if let testString: String = testValue.text {
            if let testNumber: Int = Int(testString) {
                var i = 2
                let ubound = testNumber
                var processSwitch = true
                resultString.text = "The number is prime."
                while processSwitch {
                    if testNumber % i == 0 {
                        resultString.text = "The number is not prime. First divisible number is \(String(i))."
                        processSwitch = false
                    }
                    i += 1
                    if i > ubound {
                        processSwitch = false
                    }
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

