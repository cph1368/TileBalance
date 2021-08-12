//
//  MenuRow.swift
//  TileBalance
//
//  Created by Corry Handayani on 12/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    

    var rightIcon: String = "chevron.right"
    
    var body: some View {
        VStack {
            HStack{
            
               Text("Info Screen")
                .font(.subheadline)
                .fontWeight(.semibold)
                
                Spacer()
                Image(systemName: rightIcon)
                    .font(.system(size: 15, weight: .semibold))
                    .opacity(0.3)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
        }
      
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
