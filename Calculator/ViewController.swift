//
//  ViewController.swift
//  Calculator
//
//  Created by Komukill Loganathan on 1/7/19.
//  Copyright © 2019 Komukill Loganathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Decalaration of Outlets
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet var numberButton: [UIButton]!
    @IBOutlet var operationButton: [UIButton]!
    @IBOutlet weak var evaluateButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    
    //Declaration of variables
    var text = "0"
    var decimalNumber = false
    var operationInProgress = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }
    
    /**
     Clears the calculator when tapped.
      - sets the display to 0 and sets all variables to starting mode.
     --> COMPLETE
     **/
    @IBAction func clearTapped(_ sender: UIButton) {
        text = "0"
        decimalNumber = false
        operationInProgress = false
        updateDisplay()
    }
    
    /**
     Negates a positive number and positivize a negative number in display.
      - zero is neutral.
     --> COMPLETE
     **/
    @IBAction func signTapped(_ sender: UIButton) {
        if text == "0" {
        } else if !text.hasPrefix("-") {
            text.insert("-", at: text.startIndex)
        } else {
            text = String(text.dropFirst())
        }
        updateDisplay()
    }
    
    /**
     Converts current number to be a fraction over 100.
     --> COMPLETE
     **/
    @IBAction func percentTapped(_ sender: UIButton) {
        let num = Double(text)! / 100
        text = String(num)
        updateDisplay()
    }
    
    /**
     Builds multiple digit numbers to be displayed.
     --> COMPLETE
     **/
    @IBAction func numberTapped(_ sender: UIButton) {
        if text == "0"{
            text = sender.title(for: .normal)!
        } else {
            text += sender.title(for: .normal)!
        }
        updateDisplay()
    }
    
    /**
     Makes a number decimal.
      - Avoids having multiple decimals in one number.
     --> COMPLETE
     **/
    @IBAction func decimalTapped(_ sender: UIButton) {
        if !decimalNumber {
            text += "."
            decimalNumber = true
        } else {
            text = "Err"
        }
        updateDisplay()
    }
    
    /**
     Performs operations on current number and upcoming number.
     --> TODO
     **/
    @IBAction func operationTapped(_ sender: UIButton) {
        operationInProgress = true
        let operationButton = sender.title(for: .normal)!
        switch operationButton {
        case "+": break
        case "-": break
        case "x": break
        case "÷": break
        default:
            break;
        }
    }
    
    /**
     Evaluates operations performed on numbers
     --> TODO
     **/
    @IBAction func evaluateTapped(_ sender: UIButton) {
        
    }
    
    /**
     Updates label to reflect input.
     --> COMPLETE
     **/
    func updateDisplay() {
        display.text = text
    }


}

