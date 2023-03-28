//
//  CleanArchTemplateTests.swift
//  CleanArchTemplateTests
//
//  Created by Ondřej Veselý on 28.03.2023.
//

import XCTest
import ComposableArchitecture
@testable import CleanArchTemplate

final class CleanArchTemplateTests: XCTestCase {
    @MainActor
    func testDownloadDetailViewFeature() async {
        let store = TestStore(initialState: DownloadDetailViewFeature.State(), reducer: DownloadDetailViewFeature(downloadImage: DownloadImageInteractor()))

        await store.send(.increaseSomething) {
            $0.something = 1
        }

        await store.send(.downloadTapped) {
            $0.loadingsCounter = 1
        }

        await store.receive(.downloadResult(.failure(DownloadError.invalidIdentifier)), timeout: 1) {
            $0.shouldDisplayError = true
            $0.loadingsCounter = 0
        }

        await store.send(.binding(.set(\.$shouldDisplayError, false))) {
            $0.shouldDisplayError = false
        }

        await store.send(.binding(.set(\.$identifier, "Aaa"))) {
            $0.identifier = "Aaa"
        }
    }
}
