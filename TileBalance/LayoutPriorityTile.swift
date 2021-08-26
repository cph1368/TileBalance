//
//  LayoutPriorityTile.swift
//  TileBalance
//
//  Created by Corry Handayani on 26/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct LayoutPriorityTile: View {
    var body: some View {
        ScrollView {
              VStack {
    
                       VStack {
                           ForEach(accounts){
                               account in
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
                        
                      
                               VStack(alignment: .leading){
                                
                                HStack{
                                    Text("\(account.type)")
                                        .fontWeight(.regular)
                                     .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                    Spacer()
                                         Text("\(account.balance)")
                                        .fontWeight(.semibold)
                                     .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                }
                                .padding(.bottom,4)
                                .modifier(Header2())
                                
                        
                                   Text("Card ending in ...\(account.num)")
                                       .modifier(TextGray())
                                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                   
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
                                    .layoutPriority(1)
                                Spacer()
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                 //Text("Explore")
                                    Text("EXPLORE NOW")
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
}

struct LayoutPriorityTile_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriorityTile()
    }
}
