//
//  MyGeometryReaderVStack.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/16.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVStack : View {
    
    @State var index : Index = .one
    
    var body: some View{
        
        GeometryReader{ geometry in
            VStack{
                
                Button(action:{
                    // 버튼이 클릭되었을때 로직
                    print("1번이 클릭되었습니다.")
                    
                    withAnimation{
                        self.index = .one
                    }
                    
                }){
                    // 버튼의 생김새
                    Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height / 3)
                    .padding(.horizontal, self.index == .one ? 50 : 0)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                }
                
                Button(action:{
                    // 버튼이 클릭되었을때 로직
                    print("2번이 클릭되었습니다.")
                    
                    withAnimation{
                        self.index = .two
                    }
                    
                    
                }){
                    // 버튼의 생김새
                    Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height / 3)
                    .padding(.horizontal, self.index == .two ? 50 : 0)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                }
                
                Button(action:{
                    // 버튼이 클릭되었을때 로직
                    print("3번이 클릭되었습니다.")
                    
                     withAnimation{
                       self.index = .three
                    }
                    
                }){
                    // 버튼의 생김새
                    Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height / 3)
                    .padding(.horizontal, self.index == .three ? 50 : 0)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                }
            }
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
        

    }
}

struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
