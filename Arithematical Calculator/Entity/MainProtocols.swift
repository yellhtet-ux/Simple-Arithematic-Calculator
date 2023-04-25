//
//  MainProtocols.swift
//  Arithematical Calculator
//
//  Created by Timmy Cole on 4/25/23.
//

import Foundation

protocol ViewToPresenterProtocol {
    var view : PresenterToViewProtocol? {get set}
    var interactor : PresenterToInteractorProtocol? {get set}
    
    func addition(num1: String,num2: String)
    func subtraction(num1: String,num2: String)
    func multiplication(num1: String,num2: String)
    func division(num1: String,num2: String)
}

protocol PresenterToInteractorProtocol {
    
    var presenter: InteractorToPresenterProtocol? {get set}
    
    func add(num1: String,num2: String)
    func subtract(num1: String,num2: String)
    func multiply(num1: String,num2: String)
    func division (num1: String,num2: String)
}

protocol PresenterToRouterProtocol {
    static func createModule (ref: ViewController)
}
