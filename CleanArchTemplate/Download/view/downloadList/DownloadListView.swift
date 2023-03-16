//
//  DownloadListView.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import SwiftUI

struct DownloadListView: View {
    @ObservedObject private var viewModel = DownloadListViewModel()
    
    var body: some View {
        Button {
            viewModel.increaseSomething()
        } label: {
            Text("\(viewModel.something)")
        }
    }
}
