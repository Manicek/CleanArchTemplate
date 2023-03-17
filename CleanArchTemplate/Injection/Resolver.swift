//
//  Resolver.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Swinject

class Resolver {
    static let shared = Resolver()
    
    private init() {
        container = Container()
        
        DownloadInjection.register(container: container)
    }
    
    private var container: Container
    
    func resolve<T>(_ type: T.Type) -> T {
        container.resolve(T.self)!
    }
}

// MARK: - Swinject.Resolver extension

extension Swinject.Resolver {
    func resolve<Service>(_ serviceType: Service.Type) -> Service {
        guard let service = resolve(serviceType) else {
            fatalError("Failed to resolver service: \(serviceType)")
        }
        return service
    }
}
