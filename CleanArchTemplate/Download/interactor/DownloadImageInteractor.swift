//
//  DownloadImageInteractor.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Foundation

class DownloadImageInteractor {
    @Inject private var downloadRepository: DownloadRepository
    
    func callAsFunction(_ identifier: String) throws -> Data {
        try downloadRepository.downloadImage(identifier)
    }
}
