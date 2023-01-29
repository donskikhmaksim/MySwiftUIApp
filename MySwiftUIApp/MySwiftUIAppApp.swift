//
//  MySwiftUIAppApp.swift
//  MySwiftUIApp
//
//  Created by Максим Донских on 29.01.2023.
//

import SwiftUI

@main
struct SwiftUIAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("First", systemImage: "calendar")
                    }
                HomeWorkViewTask2()
                    .tabItem {
                        Label("Second", systemImage: "house")
                    }
                HomeWorkViewTask3()
                    .badge(10)
                    .tabItem {
                        Label("Third", systemImage: "play")
                    }
                ModelList()
                    .badge(10)
                    .tabItem {
                        Label("Forth", systemImage: "stop")
                    }
            }
        }
    }
}
