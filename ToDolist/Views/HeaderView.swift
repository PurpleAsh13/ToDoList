//
//  HeaderView.swift
//  ToDolist
//
//  Created by Sharma, Shubham on 25/03/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    var body: some View {
        // Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background )
                .rotationEffect(Angle(degrees: angle))
                .offset(y: -100)
            
            VStack {
                Text(title)
                    .font(.system(size:50))
                    .foregroundColor(.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 400)
        .offset(y:-100)
    }
}

#Preview {
    HeaderView(title: "Title", subTitle: "Subtitle", angle: 15.0, background: .blue)
}
