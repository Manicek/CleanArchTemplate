//
//  DownloadViewModel.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Foundation

class DownloadDetailViewModel: ObservableObject {
    @Inject private var downloadImageInteractor: DownloadImageInteractor
    
    @Published var identifier = ""
    @Published var imageData: Data?
    @Published var shouldDisplayError = false
    @Published var something = 0
    
    func download() {
        do {
            imageData = try downloadImageInteractor(identifier)
        } catch {
            print("Failed to download data")
            shouldDisplayError = true
        }
    }
    
    func increaseSomething() {
        something += 1
    }
}
