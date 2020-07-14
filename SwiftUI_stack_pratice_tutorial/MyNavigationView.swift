//
//  MyNavigationView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/14.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyNavigationView : View {
    var body: some View{
        
        NavigationView{
//            Text("MyNavigationView")

            MyList()
            
            .navigationBarTitle("안녕하세요!")
//            .navigationBarTitle("안녕하세요!", displayMode: .automatic)
                .navigationBarItems(leading:
                    Button(action:{
                        print("호호")
                        }){
                          Text("호호")
                        }
                    , trailing:
                    NavigationLink(destination:
                        Text("넘어온 화면입니다.")
                    ){
//                        Text("네비게이션")
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color.black)
                    }
                )
        }
        
        
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
