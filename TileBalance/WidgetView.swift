//
//  WidgetView.swift
//  TileBalance
//
//  Created by Corry Handayani on 6/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct WidgetView: View {
    
    let widget: WidgetData
    
    var body: some View {
        VStack{
            
            VStack(alignment: .leading,spacing: 0){
                Text("WORKING STATUS")
                    .font(.system(size: 10))
                  .padding(.bottom, 7)

                Text("\(widget.statusTitle)")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
       
                   
                Image(widget.iconName)
                    .padding(.top,12)
                
            }
            .padding(.top,16)
        
            
         }
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.7069736123, blue: 0.6013585925, alpha: 1)))
        .frame(width: 125, height: 140, alignment: .leading)
        .padding()
        .background(Color(#colorLiteral(red: 0.9058823529, green: 0.968627451, blue: 0.9568627451, alpha: 1)))
        .cornerRadius(30)

        
        
                    
    }
}
