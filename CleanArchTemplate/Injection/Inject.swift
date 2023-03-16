//
//  Inject.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Foundation

@propertyWrapper
struct Inject<I> {
    let wrappedValue: I
    init() {
        self.wrappedValue = Resolver.shared.resolve(I.self)
    }
}
