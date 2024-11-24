//
//  BottomOfGetttingStartedView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 24/11/24.
//

import SwiftUI

struct BottomOfGetttingStartedView: View {
    var body: some View {
        VStack {
            ImageHeader()
            
            VStack (alignment: .leading, spacing: 30){
                
                ManageTasksTextView()
                
                StartActionView()
                
            }
            .padding()
        }
    }
}

#Preview {
    BottomOfGetttingStartedView()
}
