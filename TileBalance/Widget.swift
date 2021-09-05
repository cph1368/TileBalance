//
//  Widget.swift
//  TileBalance
//
//  Created by Corry Handayani on 5/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct Widget: View {
    
    let widgets = [
        WidgetData(id: 1, statusTitle: "Business Trip", iconName: "Avatar-business-trip"),
        WidgetData(id: 2, statusTitle: "In office", iconName: "Avatar-in-office"),
        WidgetData(id: 3, statusTitle: "On leave", iconName: "Avatar-remote"),
        WidgetData(id: 4, statusTitle: "Not Working", iconName: "Avatar-not-working"),
        WidgetData(id: 5, statusTitle: "Sick", iconName: "Avatar-sick")
    ]
    
    var body: some View {
        
        ScrollView{
            VStack {
        
                ForEach(widgets){
                    WidgetData in
                    
                    WidgetView(widget:WidgetData)
               
                }
            }
        }
        
        
                    
    }
}

struct Widget_Previews: PreviewProvider {
    static var previews: some View {
        Widget()
    }
}