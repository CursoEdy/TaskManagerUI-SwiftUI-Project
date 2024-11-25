//
//  CircleImageView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 25/11/24.
//

import SwiftUI

struct CircleImageView: View {
    let imageName: String
    let color: Color
    let size: CGFloat
    let lineWidth: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(color, lineWidth: lineWidth))
            .frame(maxWidth: size, maxHeight: size)
    }
}

#Preview {
    ZStack {
        Color.purple1.ignoresSafeArea()
        VStack {
            CircleImageView(imageName: person1, color: .white, size: 100, lineWidth: 2)
            CircleImageView(imageName: person2, color: .white, size: 100, lineWidth: 3)
            CircleImageView(imageName: person3, color: .white, size: 100, lineWidth: 3)
            CircleImageView(imageName: person4, color: .white, size: 100, lineWidth: 2)
        }
    }
}
