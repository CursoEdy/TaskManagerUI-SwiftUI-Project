//
//  ImageHeader.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 24/11/24.
//

import SwiftUI

struct ImageHeader: View {
    let imageDimX: CGFloat = 300
    let imageDimY: CGFloat = 200
    
    var body: some View {
        Image(gettingStartedImage)
            .resizable()
            .scaleEffect(1.5)
            .frame(width: imageDimX, height: imageDimY)
            .clipShape(SquareCircleShape())
            .padding()
            .padding(.bottom, 30)
            .scaleEffect(2)
        
    }
}

#Preview {
    ImageHeader()
}
