//
//  ShadowSwiftUIView.swift
//  SwiftUIViewsApp
//
//  Created by Nadia Mettioui on 14/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import SwiftUI

struct ShadowSwiftUIView: View {
    @State private var userName = ""
    @State private var pswd = ""
    
    private var shadRadius  : CGFloat = 10
    private var xOffSet : CGFloat = 10
    private var yOffset : CGFloat = 10
    private let lg = LinearGradient(gradient: Gradient(colors: [Color.clear,Color.themeBg]), startPoint: .topLeading, endPoint: .bottomTrailing)
    var body: some View {
        ZStack {
            lg
           // Color.themeBg
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20.0) {
                Image(systemName: "person.circle")
                    .font(.system(size: 100, weight: .thin))
                    .foregroundColor(Color.themeFg)
                    .shadow( radius: shadRadius, x: xOffSet, y: yOffset)
                
                Text("Log into your account")
                    .foregroundColor(Color.themeFg)
                    .shadow( radius: shadRadius, x: xOffSet, y: yOffset)
                
                
                TextField("E-mail", text: $userName)
                    .padding()
                    .background(Capsule().fill(Color.white).opacity(0.7))
                    .shadow( color : .red,radius: shadRadius, x: xOffSet, y: yOffset)
                SecureField("Password", text: $pswd)
                    .padding()
                    .background(Capsule().fill(Color.white).opacity(0.7))
                    .shadow( radius: shadRadius, x: xOffSet, y: yOffset)
                
                Button(action: {}) {
                    Text("Log In")
                        .padding()
                        .frame(maxWidth: .infinity) // Flexible Frame
                        .background(Capsule()
                            .fill(Color.white))
                             .shadow( radius: shadRadius, x: xOffSet, y: yOffset)
                            
                    
                    
                }
            }
            //.padding(.trailing, 0.0)
            .padding(.horizontal)
            
        }
        
    }
}


struct ShadowSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowSwiftUIView()
    }
}
