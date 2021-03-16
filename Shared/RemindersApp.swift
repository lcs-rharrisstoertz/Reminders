//
//  RemindersApp.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-16.
//

import SwiftUI

@main
struct RemindersApp: App {
    
    @StateObject private var store = TaskStore(tasks: testData)
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
