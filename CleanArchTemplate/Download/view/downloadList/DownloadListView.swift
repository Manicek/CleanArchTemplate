//
//  DownloadListView.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import SwiftUI
import ComposableArchitecture

struct DownloadListView: View {
    @ObservedObject private var viewModel = DownloadListViewModel()
    let store: StoreOf<DownloadListViewFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            Button {
                viewStore.send(.increaseSomething)
            } label: {
                Text("\(viewStore.something)")
            }
        }
    }
}
