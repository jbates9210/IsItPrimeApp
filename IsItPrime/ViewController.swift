//
//  ViewController.swift
//  IsItPrime
//
//  Created by Jared Bates on 3/31/18.
//  Copyright © 2018 jared. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var isPrimeLabel: UILabel!
    @IBAction func primeButton(_ sender: Any) {
        
        if let userEnteredString = textInput.text {
            let userEnteredInt = Int(userEnteredString)
            if let number = userEnteredInt {
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
                    isPrimeLabel.text = "\(number) is prime!"
                } else {
                    isPrimeLabel.text = "\(number) is NOT prime!"
                }
            } else {
                isPrimeLabel.text = "Please enter a positive whole number"
            }
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


}

