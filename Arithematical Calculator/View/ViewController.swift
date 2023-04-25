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
    
    var presenterObj : ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
        Router.createModule(ref: self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func additionButtonPressed(_ sender: UIButton) {
        if let number1 = input1TextField.text, let number2 = input2TextField.text {
            presenterObj?.addition(num1: number1, num2: number2)
        }
    }
    
    @IBAction func SubtractionButtonPressed(_ sender: UIButton) {
        if let number1 = input1TextField.text, let number2 = input2TextField.text {
            presenterObj?.subtraction(num1: number1, num2: number2)
        }
    }
    
    @IBAction func multiplicationButtonPressed(_ sender: UIButton) {
        if let number1 = input1TextField.text, let number2 = input2TextField.text {
            presenterObj?.multiplication(num1: number1, num2: number2)
        }
    }
    @IBAction func divisionButtonPressed(_ sender: UIButton) {
        if let number1 = input1TextField.text, let number2 = input2TextField.text {
            presenterObj?.division(num1: number1, num2: number2)
        }
    }
    
}

extension ViewController : PresenterToViewProtocol {
    func sendData(data: String) {
        resultLabel.text = data
    }
    
    
}
