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
            
            
            VStack{
                //testing to see if the data load correctly
               //Top card
                VStack {
                    
                    TopSection()
             
                    //one customer may have many accounts
                    // account card
                    VStack(alignment: .leading){
                        HStack{
                            Text("Westpac Choice")
                                .fontWeight(.regular)
                            Spacer()
                            Text("$50,000")
                                .fontWeight(.semibold)
                        }
                        .padding(.bottom,4)
                        .modifier(Header2())
                        //.frame(maxWidth: .infinity, alignment: .leading)
                        // added alignment on Vstack - code efficiency
                        
                        Text("Card ending in ...1234")
                            .modifier(TextGray())
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color("LightGray")))
                       
                    
                }
                .padding([.top, .leading, .trailing])
                .padding(.bottom, 8)
                
                BottomCard()
 
            }
            .background(Color.white)
            .cornerRadius(3)
            // using corner radius to cut it off  before overlay
            .overlay(
            RoundedRectangle(cornerRadius:3)
                .stroke(Color("LightGray"), lineWidth: 1))
            
            //end Vstack
            
        }
        .padding()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
    
        }
    }
}
