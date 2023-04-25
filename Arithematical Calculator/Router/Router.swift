//
//  Router.swift
//  Arithematical Calculator
//
//  Created by Timmy Cole on 4/25/23.
//

import Foundation

class Router : PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        ref.presenterObj = presenter
        ref.presenterObj?.interactor = Interactor();
        ref.presenterObj?.view = ref
        
        ref.presenterObj?.interactor?.presenter = presenter
    }
    
    
}
