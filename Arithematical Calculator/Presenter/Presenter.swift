//
//  Presenter.swift
//  Arithematical Calculator
//
//  Created by Timmy Cole on 4/25/23.
//

import Foundation

class Presenter : ViewToPresenterProtocol {
    
    var view: PresenterToViewProtocol?
    var interactor: PresenterToInteractorProtocol?
    
    func addition(num1: String, num2: String) {
        interactor?.add(num1: num1, num2: num2)
    }
    
    func subtraction(num1: String, num2: String) {
        interactor?.subtract(num1: num1, num2: num2)
    }
    
    func multiplication(num1: String, num2: String) {
        interactor?.multiply(num1: num1, num2: num2)
    }
    
    func division(num1: String, num2: String) {
        interactor?.division(num1: num1, num2: num2)
    }
}

extension Presenter : InteractorToPresenterProtocol {
    func sendData(data: String) {
        view?.sendData(data: data)
    }
}

