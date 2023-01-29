//
//  HomeWorkViewTask4.swift
//  SwiftUIApp
//
//  Created by Максим Донских on 29.01.2023.
//

import SwiftUI

struct ModelRow: View {
    var model: Model

    var body: some View {
        HStack {
            model.image
                .resizable()
                .frame(width: 40, height: 40)
            Text(model.name)
            Spacer()
        }
    }
}

struct ModelList: View {
    var body: some View {
        NavigationView {
            List(models) { model in
                            NavigationLink {
                                ModelDetails(model: model)
                            } label: {
                                ModelRow(model: model)
                            }
                        }
            .navigationTitle("Social Media")
        }
    }
}

struct ModelList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "iPad Pro (12,9 inch) (2nd generation)"], id: \.self) { deviceName in
            ModelList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }    
}


//struct LandmarkRow_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ModelRow(model: models[1])
//            ModelRow(model: models[0])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
//}
