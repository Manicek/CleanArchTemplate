//
//  DownloadRepository.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Foundation

protocol DownloadRepository {
    func downloadImage(_ identifier: String) throws -> Data
    func downloadTexts() -> [String]
}
