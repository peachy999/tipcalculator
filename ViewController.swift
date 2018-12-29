//
//  ViewController.swift
//  Tip Calculator 1
//
//  Created by Kenley LIu on 12/24/18.
//  Copyright © 2018 Kenley LIu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
    }
        // Do any additional setup after loading the view, typically from a nib.
    }
        


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
        
        
    }

@IBAction func settingsButton(_ sender: Any) {
    // Opens seperate window for settings
}
button.setTitle( "setting" , for: .normal )



