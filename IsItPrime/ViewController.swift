//
//  ViewController.swift
//  IsItPrime
//
//  Created by Niket Shah on 2/7/17.
//  Copyright © 2017 Niket Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldPrime: UITextField!
    
    @IBOutlet var outputLabelPrime: UILabel!
    
    
    @IBAction func buttonCheck(sender: AnyObject) {
        
        var isPrime = true
        
        if let numberString=textFieldPrime.text{
            let numberInt=Int(numberString)
            
            if let number=numberInt{
                
                if (number <= 1) {
                    isPrime = false
                }
                
                var i = 2
                
                while i * i < number {
                    if number % i == 0{
                        isPrime = false
                    }
                    i+=1
                }
                if isPrime{
                    outputLabelPrime.text="\(number) is Prime!"
                }
                else{
                    outputLabelPrime.text="\(number) is not a Prime number"
                }

                
            }
            else{
                outputLabelPrime.text="Please enter a positive whole number"
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

