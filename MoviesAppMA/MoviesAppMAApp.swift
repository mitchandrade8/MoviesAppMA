//
//  MoviesAppMAApp.swift
//  MoviesAppMA
//
//  Created by Mitch Andrade on 6/14/23.
//

import SwiftUI
import SwiftData

@main
struct MoviesAppMAApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
