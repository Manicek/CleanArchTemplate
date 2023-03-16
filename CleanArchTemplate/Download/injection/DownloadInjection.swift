//
//  DownloadInjection.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Swinject

enum DownloadInjection {
    static func register(container: Container) {
        container.register(DownloadRepository.self) { _ in
            DownloadRepositoryImpl()
        }.inObjectScope(.container)
        
        container.register(DownloadImageInteractor.self) { _ in
            DownloadImageInteractor()
        }.inObjectScope(.container)
    }
}
