//
//  HomeWork.swift
//  SwiftUIApp
//
//  Created by Максим Донских on 28.01.2023.
//

import SwiftUI

struct HomeWorkViewTask3: View {
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 10)
            Image("logo")
                .resizable()
                .frame(width: 100.0, height: 100.0)
            Spacer(minLength: 10)
            
            VStack(spacing: 0) {
                HStack {
                    Spacer(minLength: 13)
                    TextField("", text: $login)
                        .placeHolder(Text("Email, login or telephone number"), show: login.isEmpty).foregroundColor(.gray)
                        .padding([.horizontal], 10)
                        .frame(height: 50)
                        .background(RoundedCorners(color: .clear, tl: 20, tr: 20, bl: 0, br: 0, left: true, right: true))
                    Spacer(minLength: 13)
                    
                }
                HStack {
                    Spacer(minLength: 13)
                    TextField("", text: $password)
                        .placeHolder(Text("Password"), show: login.isEmpty).foregroundColor(.gray)
                        .padding([.horizontal], 10)
                        .frame(height: 50)
                        .background(RoundedCorners(color: .clear, tl: 0, tr: 0, bl: 20, br: 20, left: true, right: false))
                    Spacer(minLength: 13)
                }
            }
            .padding(.bottom, 20)
            Button {} label: {
                Text("Login")
                    .foregroundColor(.white)
                    .padding(.horizontal, 160)
                    .padding(.vertical, 10)
                    .frame(height: 40)
            }
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 17))
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            Spacer(minLength: 10)
            Spacer(minLength: 10)
        }
    }    
}
    
struct HomeWorkViewTask3_Previews: PreviewProvider {
    static var previews: some View {
        HomeWorkViewTask3()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct PlaceHolder<T: View>: ViewModifier {
    var placeHolder: T
    var show: Bool
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if show { placeHolder }
            content
        }
    }
}

extension View {
    func placeHolder<T:View>(_ holder: T, show: Bool) -> some View {
        self.modifier(PlaceHolder(placeHolder:holder, show: show))
    }
}
