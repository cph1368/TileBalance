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
    
        VStack(alignment: .leading) {
        Spacer()
            VStack{
                Image(systemName: "person.circle.fill")
                             .foregroundColor(Color("DarkGray"))
                               .font(.system(size: 78))
                
                VStack (alignment: .leading) {
                             Text("Hi John, we need more information from you")
                             
                             Text("Provide your employment details to help us better protect you")
                             
                             Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                 Text("Things you should know")
                             }
                         }
                         .padding(.vertical)
                           
            }
            
           Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Provide Details")
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                          Text("Not now")
                      }
        }
        
        
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
    
        }
    }
}
