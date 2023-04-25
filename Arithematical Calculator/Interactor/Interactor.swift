//
//  Interactor.swift
//  Arithematical Calculator
//
//  Created by Timmy Cole on 4/25/23.
//

import Foundation

class Interactor : PresenterToInteractorProtocol {
   
    var presenter: InteractorToPresenterProtocol?
   
    func add(num1: String, num2: String) {
       if let s1 = Int(num1), let s2 = Int(num2) {
            presenter?.sendData(data: String(s1 + s2))
        }
    }
    
    func subtract(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
             presenter?.sendData(data: String(s1 - s2))
         }
    }
    
    func multiply(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
             presenter?.sendData(data: String(s1 * s2))
         }
    }
    
    func division(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
             presenter?.sendData(data: String(s1 / s2))
         }
    }
}
