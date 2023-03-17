//
//  ScanInjection.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 17.03.2023.
//

import Swinject

enum ScanInjection {
    static func register(container: Container) {
        container.register(SomethingStorage.self) { _ in
            SomethingStorage()
        }.inObjectScope(.container)
        
        container.register(SomethingProviding.self) { resolver in
            resolver.resolve(SomethingStorage.self)
        }.inObjectScope(.container)
        
        container.register(SomethingStoring.self) { resolver in
            resolver.resolve(SomethingStorage.self)
        }.inObjectScope(.container)
    }
}
