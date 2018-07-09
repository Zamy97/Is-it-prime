//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Akhtar zaman on 6/29/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    
    
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString =  numberTextField.text {
            
             let userEnteredIntegar = Int(userEnteredString)
            
            if let number = userEnteredIntegar {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    i += 1
                    }
                if isPrime {
                    resultLabel.text = "\(number) is prime number!!! yay!!"
                } else {
                    
                    resultLabel.text = "\(number) is not prime"
                }
                
                
                
                
            } else {
                
                resultLabel.text = "Please enter a positive whole number"
            }
            
        }
        
    }
    
    
    @IBOutlet var resultLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

