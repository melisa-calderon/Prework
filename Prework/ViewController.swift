//
//  ViewController.swift
//  Prework
//
//  Created by Melisa Calderon on 12/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var customTip: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ??  0
        let tipAmnt = Double(Int(tipSlider.value))
        let tipPercentage = Double(tipAmnt / 100)
        let tip = bill * tipPercentage
        let total = bill + tip
        
        customTip.text = String(format: "%.0f",tipAmnt)
        // updates tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    @IBAction func calculateTipDefault(_ sender: Any) {
        // get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ??  0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
    
        // updates tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func changeMode(_ sender: Any) {
        if (darkModeSwitch.isOn){
            overrideUserInterfaceStyle = .dark
        }
        else{
            overrideUserInterfaceStyle = .light
        }
        
    }
    
}

