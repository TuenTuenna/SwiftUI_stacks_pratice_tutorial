//
//  MyBasicCard.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/05.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyBasicCard : View {
    
    var body: some View{
        
        HStack(spacing: 20){
            
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
//                Rectangle().frame(height: 0)
                Text("하하하")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
                Text("하하하")
                    .foregroundColor(Color.white)
                
            }
            
            
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
    
    
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
