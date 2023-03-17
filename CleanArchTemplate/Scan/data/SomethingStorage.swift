//
//  SomethingStorage.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 17.03.2023.
//

import Foundation

class SomethingStorage: SomethingStoring, SomethingProviding {
    var something: Something?
    
    func storeSomething(_ something: Something?) {
        self.something = something
    }
    
    func getSomething() -> Something? {
        something
    }
}
