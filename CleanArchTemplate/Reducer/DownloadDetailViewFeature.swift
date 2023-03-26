//
//  DownloadDetailViewFeature.swift
//  CleanArchTemplate
//
//  Created by Ondřej Veselý on 26.03.2023.
//

import ComposableArchitecture
import Foundation

struct DownloadDetailViewFeature: ReducerProtocol {
    struct State: Equatable {
        @BindingState var identifier = ""
        var imageData: Data?
        @BindingState var shouldDisplayError = false
        var something = 0
    }
    
    enum Action: Equatable, BindableAction {
        case increaseSomething
        case downloadTapped
        case downloadResult(TaskResult<Data>)
        case binding(BindingAction<State>)
    }
    
    let downloadImage: DownloadImageInteractor
    
    var body: some ReducerProtocol<State, Action> {
        BindingReducer()
        Reduce<State, Action> { state, action in
            switch action {
            case .increaseSomething:
                state.something += 1
                return .none
            case .downloadTapped:
                return .task { [identifier = state.identifier] in
                    await .downloadResult(
                        TaskResult {
                            try downloadImage(identifier)
                        }
                    )
                }
            case .downloadResult(.success(let data)):
                state.imageData = data
                return .none
            case .downloadResult(.failure(_)):
                state.shouldDisplayError = true
                return .none
            case .binding(_):
                return .none
            }
        }
    }
}
