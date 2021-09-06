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
    func Magenta() -> some View {
        self.background(Color("LightMagenta"))
            .foregroundColor(Color("Magenta"))
    }
    func Black() -> some View {
        self.background(Color("LightBlack"))
            .foregroundColor(Color("Black"))
    }
    func Cyan() -> some View {
        self.background(Color("LightCyan"))
            .foregroundColor(Color("DarkCyan"))
    }
    func Peach() -> some View {
        self.background(Color("LightPeach"))
            .foregroundColor(Color("Peach"))
    }
}
