//
//  TileView.swift
//  TileBalance
//
//  Created by Corry Handayani on 11/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct TileView: View {
    var body: some View {
        VStack {
                   VStack {
                       ForEach(accounts){
                           account in
                               
                       //testing to see if the data load correctly
                      //Top card
                       VStack {
                           
                        HStack(){
                            Text("Offset account")
                                .fontWeight(.semibold)
                                .modifier(Header1())
                           
                            Spacer()
                            
                         Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                         Text("Edit")
                            .modifier(TextRed())
                         }
                        }
                        .padding(.bottom,8)
                    
                           //one customer may have many accounts
                           // account card
                           VStack(alignment: .leading){
                               HStack{
                                   Text("\(account.type)")
                                       .fontWeight(.regular)
                                   Spacer()
                                        Text("\(account.balance)")
                                       .fontWeight(.semibold)
                               }
                               .padding(.bottom,4)
                               .modifier(Header2())
                               //.frame(maxWidth: .infinity, alignment: .leading)
                               // added alignment on Vstack - code efficiency
                               
                               Text("Card ending in ...\(account.num)")
                                   .modifier(TextGray())
                               
                           }
                           .padding()
                           .overlay(
                               RoundedRectangle(cornerRadius: 3)
                                   .stroke(Color("LightGray")))
                              
                           
                       }
                       .padding([.top, .leading, .trailing])
                       .padding(.bottom, 8)
                       
                        HStack {
                             //Text("How is your Offset helping you save?")
                               Text("\(account.q1)")
                                .modifier(TextGray())
                                .padding(.leading)
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                             //Text("Explore")
                                Text("\(account.btn1)")
                                                   .padding(.vertical, 5)
                                                   .padding(.horizontal, 8)
                                                   .background(Color.white)
                                                   .foregroundColor(Color("Dark"))
                                                   .font(.caption)
                                                   .overlay(
                                                       RoundedRectangle(cornerRadius: 3)
                                                           .stroke(Color("Red"), lineWidth: 1))
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            
                            
                        }
                        .background(Color("AccentColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                       }
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

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView()
    }
}
