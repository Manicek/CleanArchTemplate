//
//  DownloadView.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import SwiftUI
import ComposableArchitecture

struct DownloadDetailView: View {
    let store: StoreOf<DownloadDetailViewFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack(alignment: .center) {
                TextField("Identifier", text: viewStore.binding(\.$identifier))
                
                Button {
                    viewStore.send(.downloadTapped)
                } label: {
                    Text("Download")
                }
                
                Button {
                    viewStore.send(.increaseSomething)
                } label: {
                    Text("\(viewStore.state.something)")
                }
            }
            .padding(20)
            .alert("Error", isPresented: viewStore.binding(\.$shouldDisplayError)) {
                Button("OK") {}
                Button("Retry") {
                    viewStore.send(.downloadTapped)
                }
            } message: {
                Text("There was an error when downloading the image")
            }
        }
    }
}
