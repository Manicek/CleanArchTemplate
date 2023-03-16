//
//  DownloadListViewModel.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import Foundation

class DownloadListViewModel: ObservableObject {
    @Published var something = 0
    
    func increaseSomething() {
        something += 1
    }
}
