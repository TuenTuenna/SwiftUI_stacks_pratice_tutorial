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
                        MyCard(icon: "tray.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                        MyCard(icon: "tv.fill", title: "영상 다시보기", start: "8 AM", end: "9 AM", bgColor: Color.red)
                        
                        MyCard(icon: "cart.fill", title: "마트 장보기", start: "10 AM", end: "11 AM", bgColor: Color.orange)
                        MyCard(icon: "gamecontroller.fill", title: "히오스 한판하기", start: "2 PM", end: "3 PM", bgColor: Color.blue)
                           
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
