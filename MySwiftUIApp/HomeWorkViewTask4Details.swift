//
//  HomeWorkViewTask4.swift
//  SwiftUIApp
//
//  Created by Максим Донских on 29.01.2023.
//

import SwiftUI

struct ModelDetails: View {
    
    var model: Model
    
    var body: some View {
        ScrollView {
            MapView(coordinate: model.coordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: model.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(model.name)
                    .font(.title)
                
                HStack {
                    Text(model.adress)
                    Spacer()
                    Text(model.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(model.name)")
                    .font(.title2)
                Text(model.description)
            }
            .padding(20)
        }
        .navigationTitle(model.name)
        .navigationBarTitleDisplayMode(.inline)
    }    
}

struct ModelDetails_Previews: PreviewProvider {
    static var previews: some View {
        ModelDetails(model: models[2])
    }
}
