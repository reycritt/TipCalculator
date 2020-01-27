//
//  ViewController.swift
//  TipCalculator
//
//  Created by Socstudent on 1/27/20.
//  Copyright © 2020 Socstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount, calculate tip/total, update tip/total labels
        let bill = Double (billField.text!) ?? 0//??: if not valid, change to 0
        
        let tipPercentages = [0.10, 0.15, 0.20, 0.25]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)//f = dec, d = int, @ = string
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
    
}

