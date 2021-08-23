//
//  ContentView.swift
//  TileBalance
//
//  Created by Corry Handayani on 10/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        TileView()
        RequestDetailView()
        SelectAccView()
        
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                    .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
                    .previewDevice("iPhone 12 Pro")
                
            }
        }
    }
}
