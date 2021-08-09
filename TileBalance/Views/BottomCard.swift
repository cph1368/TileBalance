//
//  BottomCard.swift
//  TileBalance
//
//  Created by Corry Handayani on 10/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct BottomCard: View {
    var body: some View {
        
        // redeclaring for each loop
        ForEach(accounts){
            account in
            
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
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard()
    }
}
