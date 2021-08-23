//
//  ComponentList.swift
//  TileBalance
//
//  Created by Corry Handayani on 23/8/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct ComponentList: View {
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Templates")){
                    NavigationLink(destination: TileView()) {
                        Text("Westpac Balance Tile")
                    }
                    NavigationLink(destination: RequestDetailView()) {
                        Text("Provide Info Screen")
                    }
                    NavigationLink(destination: SelectAccView()) {
                                           Text("Select Account Screen")
                                       }
                }
                
            }
            .padding(.top,24)
            .navigationBarTitle("Components")
            
        }
        .padding()
    }
}

struct ComponentList_Previews: PreviewProvider {
    static var previews: some View {
        ComponentList()
    }
}
