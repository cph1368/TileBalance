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
                
                
             ForEach(details){
                                  details in
                VStack(alignment: .leading){
                    CircleIcon()
              
                 
                      //    Text("\(account.type)")
                    Text("\(details.detail)")
                        .fontWeight(.bold)
                        .modifier(Header0())
                        .padding(.bottom)
                        .fixedSize(horizontal: false, vertical: true)
                    // Adding fixedSize to AVOID TEXT TRUNCATING in smaller device
                    
                    Text("\(details.desc)")
                        .modifier(Header2())
                        .padding(.bottom)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Button(action:{}) {
                        Text("\(details.actionlink)")
                    }
                    .padding(.vertical)
                    .foregroundColor(Color("Red"))
                }
                .padding(.vertical)
                
                }
                
            }
            .frame(maxWidth: .infinity)
            .padding(32)
            
            Spacer()
            //ADDING BUTTONS CODE
            RequestBtn()
            
        }    }
}

struct RequestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RequestDetailView()
    }
}


