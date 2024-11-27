//
//  MonthlyReviewTitleView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct MonthlyReviewTitleView: View {
    var body: some View {
        HStack {
            Text("Monthly Review")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(White)
            
            Spacer()
            
            Image(systemName: "calendar.circle")
                .font(.title2)
                .foregroundStyle(White)
                .padding(8)
                .background(Blue1)
                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    MonthlyReviewTitleView()
}
