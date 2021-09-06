//
//  Widget2View.swift
//  TileBalance
//
//  Created by Corry Handayani on 6/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import SwiftUI

struct SmallWidget: View {
 
    var body: some View {
        ScrollView{
            VStack{
                
                VStack(alignment: .leading,spacing: 0) {
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)

                    Text("Business Trip")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
                       
                    Image("Avatar-business-trip")
                        .padding(.top,12)
                    
                }
                .padding(.top,16)
            
                
             }
            .frame(width: 155, height: 155, alignment: .leading)
            .padding()
            .Cyan()
            .cornerRadius(30)
      
            
            
            VStack {
                
                VStack(alignment: .leading,spacing: 0){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)

                    Text("In Office")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
                       
                    Image("Avatar-in-office")
                        .padding(.top,12)
                    
                }
                .padding(.top,16)
            
                
             }
            .frame(width: 155, height: 155, alignment: .leading)
            .padding()
            .Green()
            .cornerRadius(30)
            
            VStack {
                
                VStack(alignment: .leading,spacing: 0){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)

                    Text("Remote")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
                    Image("Avatar-remote")
                        .padding(.top,12)
                    
                }
                .padding(.top,16)
            
                
             }
            .frame(width: 155, height: 155, alignment: .leading)
            .padding()
            .Blue()
            .cornerRadius(30)
            
            VStack{
                
                VStack(alignment: .leading,spacing: 0){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)

                    Text("On leave")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
                    Image("Avatar-on-leave")
                        .padding(.top,12)
                    
                }
                .padding(.top,16)
            
                
             }
            .frame(width: 155, height: 155, alignment: .leading)
            .padding()
            .Black()
            .cornerRadius(30)
            
            VStack{
                
                VStack(alignment: .leading,spacing: 0){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)

                    Text("Sick")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
                    Image("Avatar-sick")
                        .padding(.top,12)
                    
                }
                .padding(.top,16)
            
                
             }
            .frame(width: 155, height: 155, alignment: .leading)
            .padding()
            .Peach()
            .cornerRadius(30)
            
            
            VStack{
                
                VStack(alignment: .leading,spacing: 0){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)

                    Text("Not working")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
                    Image("Avatar-not-working")
                        .padding(.top,12)
                    
                }
                .padding(.top,16)
            
                
             }
            .frame(width: 155, height: 155, alignment: .leading)
            .padding()
            .Magenta()
            .cornerRadius(30)
        }
        
    }
}

struct Widget2View_Previews: PreviewProvider {
    static var previews: some View {
        SmallWidget()
    }
}
