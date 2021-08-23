//
//  SelectAccView.swift
//  TileBalance
//
//  Created by Corry Handayani on 18/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct SelectAccView: View {
    
    var body: some View {
        VStack(alignment:.leading){
            
            Spacer()
            
            //ADDING PROFILE TOP SECTION
            VStack(alignment: .leading){
                
                //total padding 24
                
                
                VStack(alignment: .leading){
                    CircleIcon(icon : "doc.text")
                    
                    Text("Less paper. More Protection")
                        .fontWeight(.bold)
                        .modifier(Header0())
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom)
                  
                    // Adding fixedSize to AVOID TEXT TRUNCATING in smaller device
                    
                    Text("Go paperless with these eligible accounts")
                        .modifier(Header2())
                        .padding(.bottom)
               
                    Text("Westpac Choice")
                        .fontWeight(.bold)
                        .modifier(Header2())
                    
                    Text("732-010 101010")
                        .modifier(Header3())
                         .padding(.top,4)
                    
                    VStack {
                        Text("Westpac eSaver")
                            .fontWeight(.bold)
                            .modifier(Header2())
                        
                        Text("732-010 101010")
                            .modifier(Header3())
                            .padding(.top,4)
                    }
                    .padding(.top)
                    
                    Text("We'll email you at johnsmith@gmail.com when your eStatements are ready. You can opt out or change this address any time in eStatements settings.")
                        .modifier(TextSmall())
                        .padding(.top)
                    .lineLimit(3)
                    
                    
                }
            }
                
            .padding(32)
            
            Spacer()
            //ADDING BUTTONS CODE
            RequestBtn(
            btn1: "Select Accounts", btn2: "Not Now")
            
        }    }
}


struct SelectAccView_Previews: PreviewProvider {
    static var previews: some View {
        SelectAccView()
    }
}
