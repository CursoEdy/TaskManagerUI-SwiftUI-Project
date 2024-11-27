//
//  TopAvatarView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 25/11/24.
//

import SwiftUI

struct TopAvatarView: View {
    let circleSize: CGFloat = 55
    
    var body: some View {
        HStack {
            ThreeLinesMenuBar(color: .white, lineWidth: 5, lineHeight: 30, stretch: 0.4, spacing: 6)
            Spacer()
            ZStack {
                
                ForEach(0 ..< 20) { i in
                    let factor = 2+1.5*CGFloat(i)
                    CircleView(
                        color: Purple2,
                        lineWidth: 1 / factor,
                        opacity: 2 / CGFloat(i),
                        dim: circleSize,
                        scaleEffect: factor
                    )
                }
//                Circle()
//                    .stroke(Purple2, lineWidth: 1)
//                    .frame(width: circleSize*2, height: circleSize*2)
//                Circle()
//                    .stroke(Purple2, lineWidth: 1)
//                    .frame(width: circleSize*2, height: circleSize*2)
//                    .scaleEffect(1.5)
//                Circle()
//                    .stroke(Purple2, lineWidth: 1)
//                    .frame(width: circleSize*2, height: circleSize*2)
//                    .scaleEffect(2)
//                Circle()
//                    .stroke(Purple2, lineWidth: 1)
//                    .frame(width: circleSize*2, height: circleSize*2)
//                    .scaleEffect(2.5)
//                Circle()
//                    .stroke(Purple2, lineWidth: 1)
//                    .frame(width: circleSize*2, height: circleSize*2)
//                    .scaleEffect(3)
//                Circle()
//                    .stroke(Purple2, lineWidth: 1)
//                    .frame(width: circleSize*2, height: circleSize*2)
//                    .scaleEffect(3.5)
//                Circle()
//                    .stroke(Purple2, lineWidth: 1)
//                    .frame(width: circleSize*2, height: circleSize*2)
//                    .scaleEffect(4)
                
                CircleImageView(imageName: person1, color: .white, size: circleSize, lineWidth: 2)
            }
        }
        .padding()
    }
}

struct CircleView: View {
    let color: Color
    let lineWidth: CGFloat
    let opacity: CGFloat
    let dim: CGFloat
    let scaleEffect: CGFloat
    
    var body: some View {
        Circle()
            .stroke(color.opacity(opacity), lineWidth: lineWidth)
            .frame(width: dim, height: dim)
            .scaleEffect(scaleEffect)
    }
}

struct ThreeLinesMenuBar: View {
    let color: Color
    let lineWidth: CGFloat
    let lineHeight: CGFloat
    let stretch: CGFloat
    let spacing: CGFloat
    
    var body: some View {
        HStack(spacing: spacing) {
            Capsule()
                .fill(color)
                .frame(width: lineWidth, height: lineHeight)
                .offset(y: lineHeight * stretch)
            Capsule()
                .fill(color)
                .frame(width: lineWidth, height: lineHeight)
            Capsule()
                .fill(color)
                .frame(width: lineWidth, height: lineHeight)
                .offset(y: -lineHeight * stretch)
        }
    }
}

#Preview {
    ZStack {
        Purple1.ignoresSafeArea()
        TopAvatarView()
    }
}
