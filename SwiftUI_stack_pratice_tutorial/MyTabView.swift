//
//  MyTabView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/20.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI


struct MyTabView : View {
    var body: some View{
        
        TabView{
            // 보여질 화면
//            Text("1번")
//                .fontWeight(.black)
//                .font(.largeTitle)
            MyView(title: "1번", bgColor: Color.red)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            
//            Text("2번")
//                .fontWeight(.black)
//                .font(.largeTitle)
             MyView(title: "2번", bgColor: Color.orange)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            
//            Text("3번")
//                .fontWeight(.black)
//                .font(.largeTitle)
              MyView(title: "3번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
        }
        
        
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
