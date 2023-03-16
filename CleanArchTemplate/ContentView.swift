//
//  ContentView.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("List") {
                    DownloadListView()
                }
                
                NavigationLink("Detail") {
                    DownloadDetailView(viewModel: DownloadDetailViewModel())
                }
            }
        }
    }
}
