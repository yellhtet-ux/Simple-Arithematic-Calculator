//
//  ViewController.swift
//  Arithematical Calculator
//
//  Created by Timmy Cole on 4/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var input1TextField: UITextField!
    @IBOutlet var input2TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func additionButtonPressed(_ sender: UIButton) {
        guard let firstNumString = input1TextField.text else {return};
        guard let secondNumString = input2TextField.text else {return};
        
        guard let firstNum = firstNumString.parseToInt() else {return}
        guard let secondNum = secondNumString.parseToInt() else {return};
        
        resultLabel.text = String(firstNum+secondNum);
    }
    
    @IBAction func SubtractionButtonPressed(_ sender: UIButton) {
        guard let firstNumString = input1TextField.text else {return};
        guard let secondNumString = input2TextField.text else {return};
        
        guard let firstNum = firstNumString.parseToInt() else {return}
        guard let secondNum = secondNumString.parseToInt() else {return};
        
        resultLabel.text = String(firstNum-secondNum);
        
    }
    
    @IBAction func multiplicationButtonPressed(_ sender: UIButton) {
        guard let firstNumString = input1TextField.text else {return};
        guard let secondNumString = input2TextField.text else {return};
        
        guard let firstNum = firstNumString.parseToInt() else {return}
        guard let secondNum = secondNumString.parseToInt() else {return};
        
        resultLabel.text = String(firstNum * secondNum);
        
    }
    @IBAction func divisionButtonPressed(_ sender: UIButton) {
        guard let firstNumString = input1TextField.text else {return};
        guard let secondNumString = input2TextField.text else {return};
        
        guard let firstNum = firstNumString.parseToInt() else {return}
        guard let secondNum = secondNumString.parseToInt() else {return};
        
        resultLabel.text = String(firstNum / secondNum);
    }
    
}

extension String {
 func parseToInt() -> Int? {
    return Int(self.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
 }
}
