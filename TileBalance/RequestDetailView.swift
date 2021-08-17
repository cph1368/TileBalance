//
//  RequestDetailView.swift
//  TileBalance
//
//  Created by Corry Handayani on 11/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct RequestDetailView: View {
    var body: some View {
        
        VStack(alignment:.leading){
            
            Spacer()
            
            //ADDING PROFILE TOP SECTION
            VStack(alignment: .leading){
                
                //total padding 24
                
                VStack(alignment: .leading){
                    CircleIcon()
              
                    
                    Text("Hi John, we need more information from you")
                        .fontWeight(.bold)
                        .modifier(Header0())
                        .padding(.bottom)
                        .fixedSize(horizontal: false, vertical: true)
                    // Adding fixedSize to AVOID TEXT TRUNCATING in smaller device
                    
                    Text("Provide your employment details to help us better protect you")
                        .modifier(Header2())
                        .padding(.bottom)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Button(action:{}) {
                        Text("Things you should know")
                    }
                    .padding(.vertical)
                    .foregroundColor(Color("Red"))
                }
                .padding(.vertical)
                
            }
            .frame(maxWidth: .infinity)
            .padding(32)
            
            Spacer()
            //ADDING BUTTONS CODE
            VStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Provide Details")
                }
                .padding()
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .background(Color("Red"))
                .cornerRadius(3)
                
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Not now")
                }
                .foregroundColor(Color("Red"))
                .cornerRadius(3)
                .padding()
                .frame(maxWidth: .infinity)
                
            }
            .padding()
            
        }    }
}

struct RequestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RequestDetailView()
    }
}
