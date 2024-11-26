//
//  TopAvatarView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 25/11/24.
//

import SwiftUI

struct TopAvatarView: View {
    var body: some View {
        HStack {
            ThreeLinesMenuBar(color: .white, lineWidth: 5, lineHeight: 30, stretch: 0.4, spacing: 6)
            Spacer()
            CircleImageView(imageName: person1, color: .white, size: 55, lineWidth: 2)
        }
        .padding()
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
