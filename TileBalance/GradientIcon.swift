//
//  GradientIcon.swift
//  TileBalance
//
//  Created by Corry Handayani on 12/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct GradientIcon: View {
    
    var icon: String = "person"
    
    var body: some View{
 
        
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)),Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .center, endPoint: .bottomTrailing)
            
            .mask(
                Image(systemName: icon)
                .font(.system(size: 20))
                .padding()
            )
        .padding()
            .frame(width: 78,  height: 78, alignment: .center)
                .background(Color("LightGray"))
            .mask(Circle())
        
        
        
    }
    
    
    
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
