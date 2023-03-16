//
//  DownloadRepositoryImpl.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Foundation

class DownloadRepositoryImpl: DownloadRepository {
    func downloadImage(_ identifier: String) throws -> Data {
        guard let address = getAddress(identifier: identifier) else {
            throw DownloadError.invalidIdentifier
        }
        
        if let data = address.data(using: .utf8) {
            return data
        } else {
            throw DownloadError.downloadFailed
        }
    }
    
    func downloadTexts() -> [String] {
        [] // <- Actual implementation goes here
    }
}

// MARK: - Private extension

private extension DownloadRepositoryImpl {
    func getAddress(identifier: String) -> String? {
        switch identifier {
        case "Something": return "12378.1372438234.33"
        case "Else": return "8679.234234.23"
        default: return nil
        }
    }
}
