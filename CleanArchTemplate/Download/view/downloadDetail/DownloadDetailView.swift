//
//  DownloadView.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import SwiftUI

struct DownloadDetailView: View {
    @StateObject var viewModel: DownloadDetailViewModel
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Identifier", text: $viewModel.identifier)
            
            Button {
                viewModel.download()
            } label: {
                Text("Download")
            }
            
            Button {
                viewModel.increaseSomething()
            } label: {
                Text("\(viewModel.something)")
            }
        }.padding(20)
    }
}
