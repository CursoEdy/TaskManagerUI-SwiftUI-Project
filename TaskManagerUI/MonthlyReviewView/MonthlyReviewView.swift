//
//  MonthlyReviewView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 24/11/24.
//

import SwiftUI

struct MonthlyReviewView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [LightPurple, Purple1],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            
            VStack {
                
                TopAvatarView()
                
                TitleView(nameUser: "Edy", pendingTasks: 0)
                
                CurrentTaskView()
                
                MonthlyReviewTitleView()
                
                Spacer()
            }
        }
    }
}

#Preview {
    MonthlyReviewView()
}
