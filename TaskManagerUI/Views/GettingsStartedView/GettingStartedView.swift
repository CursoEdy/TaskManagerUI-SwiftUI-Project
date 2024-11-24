//
//  ContentView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 24/11/24.
//

import SwiftUI

struct GettingStartedView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("lightBlue")
                    .ignoresSafeArea()
                
                BottomOfGetttingStartedView()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    GettingStartedView()
}
