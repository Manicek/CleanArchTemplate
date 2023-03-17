//
//  SomethingView.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 17.03.2023.
//

import SwiftUI

struct SomethingView: View {
    // Skipped view model here
    
    @Inject var somethingProvider: SomethingProviding
    @Inject var somethingStorage: SomethingStoring
    
    var body: some View {
        EmptyView()
            .onAppear {
                let something = somethingProvider.getSomething()
                somethingStorage.storeSomething(something)
            }
    }
}
