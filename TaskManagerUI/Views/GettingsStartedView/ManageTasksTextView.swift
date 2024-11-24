//
//  ManageTasksTextView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 24/11/24.
//

import SwiftUI

struct ManageTasksTextView: View {
    var body: some View {
        Text("Manage your daily tasks")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(Color("DarkBlue1"))
        
        Text("team and Projet management with solution providing App")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(Color("DarkBlue1"))
    }
}

#Preview {
    ManageTasksTextView()
}
