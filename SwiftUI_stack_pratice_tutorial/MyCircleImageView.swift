//
//  CircleImageView.swift
//  Image_tutorial
//
//  Created by Jeff Jeong on 2020/07/03.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyCircleImageView : View {
    
    var imageString: String
    
    var body: some View {
        Image(imageString)
        .resizable()
            .scaledToFill()
            .frame(width: 250, height: 250)
            .padding(.trailing, 10)
            .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                
                Circle().strokeBorder(Color.yellow, lineWidth: 15)
                
            )
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView(imageString: "dev_jeongdaeri")
    }
}
