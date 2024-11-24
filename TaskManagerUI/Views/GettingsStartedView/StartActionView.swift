//
//  StartActionView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 24/11/24.
//

import SwiftUI

struct StartActionView: View {
    var body: some View {
        
        NavigationLink {
            Text("An Amazing New View")
        } label: {
            ZStack {
                Circle()
                    .fill(Color("White").opacity(0.5))
                    .frame(width: 75, height: 75)
                    .offset(x: -65, y: -10)
                    .shadow(color: .gray.opacity(0.3) ,radius: 10, x: 5, y: 5)
                
                Text("Getting Started")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("DarkBlue1"))
            }
            .padding()
        }
    }
}

#Preview {
    StartActionView()
}
