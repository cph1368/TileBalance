//
//  TextStyleGuide.swift
//  BalanceTile
//
//  Created by Corry Handayani on 9/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct Header0: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(Color("Dark"))
    }
}
struct Header1: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(Color("Blue"))
    }
}
struct Header2: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(Color("Dark"))
    }
}

struct Header3: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(Color("DarkGray"))
    }
}


struct TextSmall: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(Color("Dark"))
    }
}

struct TextGray: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(Color("DarkGray"))
    }
}
struct TextRed: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(Color("Red"))
    }
}


struct TextStyleGuide: View {
    var body: some View {
        VStack{
            Text("Title Style Blue")
                .modifier(Header0())
            Text("Title Style Blue")
                .modifier(Header1())
            
            Text("Title Style")
                .modifier(Header2())
            
            Text("Title Style")
                .modifier(Header3())
            
            Text("Title Style")
                .modifier(TextSmall())
            
            Text("Title Style")
                .modifier(TextGray())
            
            Text("Title Style")
                .modifier(TextRed())
            
        }
    }
}



struct TextStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        TextStyleGuide()
    }
}
