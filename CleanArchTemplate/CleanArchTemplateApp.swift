//
//  CleanArchTemplateApp.swift
//  CleanArchTemplate
//
//  Created by Patrik Hora on 16.03.2023.
//

import SwiftUI

@main
struct CleanArchTemplateApp: App {
    private let resolver: Resolver
    
    init() {
        resolver = Resolver.shared
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
