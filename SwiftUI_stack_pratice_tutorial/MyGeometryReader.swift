//
//  MyGeometryReader.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/16.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyGeometryReader : View {
    var body: some View{
        
        GeometryReader{ geometry in
            
            HStack(spacing: 0){
                
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometry.size.width / 3)
                    .foregroundColor(Color.white)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 100)
//                    .foregroundColor(Color.white)
//                    .background(Color.purple)
            }.background(Color.yellow)

            
        }.background(Color.black)
        
        
        
        
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
