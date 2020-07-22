//
//  MyView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/20.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyView : View {
    
    var title: String
    
    var bgColor: Color
    
    var body: some View{
        
        ZStack{
            
            bgColor
//            .edgesIgnoringSafeArea(.all)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
            
        }.animation(.none)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: Color.orange)
    }
}
