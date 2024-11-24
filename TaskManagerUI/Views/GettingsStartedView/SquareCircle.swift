//
//  SquareCircle.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 24/11/24.
//

import SwiftUI

struct SquareCircle: View {
    var body: some View {
        SquareCircleShape()
            .stroke(Color.red, lineWidth: 3)
            .frame(width: 300, height: 300)
    }
}

struct SquareCircleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.maxX - rect.minY
        let radius = width / 4
        let ax = rect.midX - radius
        let ay = rect.minY
        
        let bx = rect.midX + radius
        let by = rect.minY
        
        let cx = rect.midX + radius
        let cy = rect.midY
        
        // move to upper left corner
        path.move(to:  CGPoint(x: ax, y: ay))
        
        // draw a line to the right
        path.addLine(to:  CGPoint(x: bx, y: by))
        
        // draw a line going down
        path.addLine(to:  CGPoint(x: cx, y: cy))
        
        // draw a semicircle
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: radius,
            startAngle: .degrees(0),
            endAngle: .degrees(180),
            clockwise: false
        )
        
        // go back to initial point A
        path.addLine(to:  CGPoint(x: ax, y: ay))
        
        return path
    }
}

#Preview {
    SquareCircle()
}
