//
//  CarrierProtocols.swift
//  Arithematical Calculator
//
//  Created by Timmy Cole on 4/25/23.
//

import Foundation

protocol InteractorToPresenterProtocol {
    func sendData (data: String)
}

protocol PresenterToViewProtocol {
    func sendData (data: String)
}
