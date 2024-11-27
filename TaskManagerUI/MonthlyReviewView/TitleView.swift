//
//  SwiftUIView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct TitleView: View {
    let nameUser: String
    let pendingTasks: Int
    
    func returnPendingTasks() -> String {
        pendingTasks > 0 ? "\(pendingTasks) tasks are pending." : "No pending tasks"
    }
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 7) {
                Text("Hi \(nameUser)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(White)
                
                Text(returnPendingTasks())
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundStyle(White)
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ZStack {
        Color.purple1.ignoresSafeArea()
        TitleView(nameUser: "Edy", pendingTasks: 6)
    }
}
