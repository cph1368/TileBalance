//
//  Extensions.swift
//  TileBalance
//
//  Created by Corry Handayani on 18/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//  This is Swift File

import SwiftUI


extension View {
    func iconCircle() -> some View {
        self.frame(width: 78,  height: 78, alignment: .center)
            .foregroundColor(Color("DarkGray"))
    }
    
    func Header0Bold() -> some View {
        self.modifier(Header0())
    }
}
