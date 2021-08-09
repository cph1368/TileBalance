//
//  TopSection.swift
//  TileBalance
//
//  Created by Corry Handayani on 10/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct TopSection: View {
    var body: some View {
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
    }
}

struct TopSection_Previews: PreviewProvider {
    static var previews: some View {
        TopSection()
    }
}
