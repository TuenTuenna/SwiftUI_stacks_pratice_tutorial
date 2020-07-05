//
//  MyProjectCard.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/05.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyProjectCard : View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Rectangle().frame(height: 0)
            
            Text("정대리 유튭 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
            
            Spacer().frame(height: 20)
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.red)
                )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Text("확인")
                    .fontWeight(.bold)
                    
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
                    
            }
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
        
        
    }
    
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
