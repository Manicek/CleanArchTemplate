//
//  DownloadListViewFeature.swift
//  CleanArchTemplate
//
//  Created by Ondřej Veselý on 26.03.2023.
//

import ComposableArchitecture

struct DownloadListViewFeature: ReducerProtocol {
    struct State: Equatable {
        var something = 0
    }

    enum Action: Equatable {
        case increaseSomething
    }

    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .increaseSomething:
            state.something += 1
            return .none
        }
    }
}
