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
                    
                    TitleTop()
                    
                    TitleTop(textTitle: "protection")
                        .padding(.bottom)
                    
                    
                    DescTitle()
                    DescTitle( desc: "accounts")
                        .padding(.bottom)
                    
                    AccDetail(acctype: "Westpac Choice", accnum: "732-010 101010")
                   
                    AccDetail()
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

struct AccDetail: View {
    var acctype: String = "Westpac eSaver"
    var accnum: String = "732-010 202020"
    
    var body: some View {
        
        VStack {
            Text(acctype)
                .fontWeight(.bold)
                .modifier(Header2())
            
            Text(accnum)
                .modifier(Header3())
                .padding(.top,4)
        }
    }
}

struct TitleTop: View {
    var textTitle: String = "Less paper. More"
    
    var body: some View {
        Text(textTitle)
            .fontWeight(.bold)
            .modifier(Header0())
    }
}

struct DescTitle: View {
    var desc: String = "Go paperless with these eligible"
    var body: some View {
        Text(desc)
            .modifier(Header2())
    }
}
