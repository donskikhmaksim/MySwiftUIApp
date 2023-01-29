//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by Максим Донских on 29.01.2023.
//

import SwiftUI

struct Universe: Identifiable {
    var id: String { name }
    var name: String
}

struct ContentView: View {
    
    @State private var isPushEnabled = false
    @State private var isShowOnboarding = true
    @State private var speed = 50.0
    @State private var isEditing = false
    @State private var universe: Universe?
    
    var body: some View {
        VStack {
            Form {
                Text("Hello World")
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Toggle(isOn: $isPushEnabled) {
                    Text("Push enable")

                }
                Toggle(isOn: $isShowOnboarding) {
                    Text("Show onboarding")
                }
                Spacer()
                VStack {
                    Text("\(speed)")
                        .foregroundColor(speed >= 60 ? .red : .green)
                    Slider(value: $speed, in: 0...100) { isEditing in
                        self.isEditing = isEditing
                    }
                }
                VStack(spacing: 16) {
                    Button {
                        universe = .init(name: "Marvel")
                    } label: {
                        Text("Marvel")
                    }
                    Button {
                        universe = .init(name: "DC")
                    } label: {
                        Text("DC")
                    }
                    .alert(item: $universe) { universe in
                        Alert(title: Text("Вы выбрали \(universe.name)"), dismissButton: .default(Text("Ok")))
                    }
                }
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
