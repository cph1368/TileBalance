//
//  RequestBtn.swift
//  TileBalance
//
//  Created by Corry Handayani on 18/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct RequestBtn: View {
    var body: some View {
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
    }
}
struct RequestBtn_Previews: PreviewProvider {
    static var previews: some View {
        RequestBtn()
    }
}
