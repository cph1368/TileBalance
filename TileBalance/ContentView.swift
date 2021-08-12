//
//  ContentView.swift
//  TileBalance
//
//  Created by Corry Handayani on 10/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack {
         
            VStack {
                Text("Component #1").padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading )
                    .font(.footnote)
                    .padding(.horizontal)
                VStack(spacing: 10) {
                    MenuRow()
                    divider
                    MenuRow()
                }
                .frame(maxWidth: .infinity)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(10)
                .shadow(radius:3)
            .padding(0)
            }
            .frame(maxWidth: .infinity)
            .padding()
        }
 
        
    }
    var divider: some View {
        Divider().background(Color.white.blendMode(.overlay))
            .padding(.horizontal)
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                
            }
        }
    }
}
