//
//  ContentView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Jeff Jeong on 2020/07/05.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment: .leading, spacing: 0){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                    .font(.largeTitle)
                }.padding(20)
                
                Text("정대리 할 일목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                
                ScrollView{
                       VStack{
                           
                           MyProjectCard()
                           MyBasicCard()
                           MyBasicCard()
                           MyBasicCard()
                           MyBasicCard()
                           MyBasicCard()
                           MyBasicCard()
                           
                    }.padding()
                }
            }
            
            
           
            
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
            .overlay(
                Image(systemName: "plus")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            )
                
                .padding(10)
            .shadow(radius: 20)
            
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
