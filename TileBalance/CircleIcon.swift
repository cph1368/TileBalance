//
//  GradientIcon.swift
//  TileBalance
//
//  Created by Corry Handayani on 12/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct CircleIcon: View {
    
    var icon: String = "person.fill"
    
    var body: some View{
        Circle()
            .iconCircle() //using extension to work on repetitive modifiers
            .overlay( Image(systemName: icon))
            .font(.system(size: 36))
            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
    }
    
    
    
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        CircleIcon()
    }
}
