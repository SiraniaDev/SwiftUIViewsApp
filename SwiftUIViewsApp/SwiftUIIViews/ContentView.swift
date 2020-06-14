//
//  ContentView.swift
//  SwiftUIViewsApp
//
//  Created by Nadia Mettioui on 13/06/2020.
//  Copyright © 2020 Nadia Mettioui. All rights reserved.
//

import SwiftUI

struct ShadowView: View {
    var body: some View {
        VStack {
            Text("Shadow Overview")
                .font(.largeTitle)
                .fontWeight(.semibold)
               
            Text("Basic")
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(height: 60.0)
                    .shadow(color: .pink, radius: 10, x: 20, y: 5)
                Circle()
                    .fill(Color.green)
                    .frame(height: 60.0)
                    .shadow(color: .pink, radius: 2, x: 2, y: 5)
                Circle()
                    .fill(Color.green)
                    .frame(height: 60.0)
                    .shadow(color: .gray, radius: 10, x: -20, y: -5)
            }
            
        Spacer()
            Text("Level of depth")
         HStack {
            Circle()
                .fill(Color.blue)
                .shadow(radius: 8, x: 15, y: 0)
            Circle()
                .fill(Color.blue)
                .shadow(radius: 8, x: 25, y: 10)
                
            Circle()
                .fill(Color.blue)
                 .shadow(radius: 8, x: 35, y: 15)
         }.frame(height : 60.0)
        Spacer()
        Text("Colored Shadow")
        HStack {
           Circle()
               .fill(Color.pink)
            //.shadow(color: .pink, radius: 8, x: 0, y: 8)
            .shadow(color: Color(#colorLiteral(red: 0.9995597005, green: 0, blue: 0, alpha: 1)), radius: 8, x: 0, y: 8)
        Circle()
               .fill(Color.blue)
                .shadow(color: .gray, radius: 8, x: 0, y: 8)
           Circle()
               .fill(Color.green)
            .shadow(color: .gray, radius: 8, x: 0, y: 8)
        }.frame(height : 60.0)
        Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowView()
            .preferredColorScheme(.light)
    }
}
