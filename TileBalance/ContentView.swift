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
        VStack {
            NavigationView {
                ScrollView {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 1000)
                            .padding()
                        List {
                            NavigationLink(destination: TileView()) {
                                Text("Westpac Balance Tile")
                            }
                            NavigationLink(destination: RequestDetailView()) {
                                Text("Provide Info Screen")
                            }
                        }
                    }
                    .navigationBarTitle("Components")
                    
                }
                .padding()
                
            }
                
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                
            }
        }
    }
}
