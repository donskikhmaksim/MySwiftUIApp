//
//  HomeWork.swift
//  SwiftUIApp
//
//  Created by Максим Донских on 28.01.2023.
//

import SwiftUI

struct HomeWorkViewTask2: View {
    
    var body: some View {
        VStack {
            Form {
                Text("Bold Title")
                    .BoldTitleWithBlueBackgroundStyle()
                Text("Regular Text")
                    .regularTextStyle()
            }
        }
    }
}
    
struct HomeWorkViewTask2_Previews: PreviewProvider {
    static var previews: some View {
        HomeWorkViewTask2()
    }
}

extension View {
    func regularTextStyle() -> some View {
        modifier(RegularText())
    }
    
    func BoldTitleWithBlueBackgroundStyle() -> some View {
        modifier(BoldTitleWithBlueBackground())
    }
    
}

struct BoldTitleWithBlueBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .background(.blue, ignoresSafeAreaEdges: .trailing)
            .fontWeight(.bold)
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

struct RegularText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.black)
    }
}
