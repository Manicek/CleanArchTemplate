//
//  DownloadTextsInteractor.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 20.03.2023.
//

import Foundation

class DownloadTextsInteractor {
    @Inject private var repository: DownloadRepository
    
    func callAsFunction() -> [String] {
        repository.downloadTexts()
    }
}
