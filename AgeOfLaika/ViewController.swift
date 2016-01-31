//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ansel Adams on 1/31/16.
//  Copyright © 2016 Ansel Adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabelField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let dogYearsConversion:Double = 7.0
        let dogYears:Double = Double(humanYearsTextField.text!)! * dogYearsConversion
        dogYearsLabelField.text = "That's \(dogYears) in dog years."
        dogYearsLabelField.hidden = false
        humanYearsTextField.resignFirstResponder()
    }
    
    @IBAction func convertToRealDogYearsButtonPressed() {
        let humanYears:Double = Double(humanYearsTextField.text!)!
        var dogYears:Double = 0.0
        
        if humanYears <= 2.0 {
            dogYears = humanYears * 10.5
        }
        else {
            dogYears = (2 * 10.5) + ((humanYears - 2.0) * 4)
        }
        
        dogYearsLabelField.text = "That's \(dogYears) in REAL dog years."
        dogYearsLabelField.hidden = false
        humanYearsTextField.resignFirstResponder()
    }
}

