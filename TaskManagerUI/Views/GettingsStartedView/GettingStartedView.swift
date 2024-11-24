//
//  ContentView.swift
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

struct GetStartedView: View {
    var body: some View {
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

struct GettingStartedView: View {
    
    var body: some View {
        ZStack {
            Color("lightBlue")
                .ignoresSafeArea()
            
            BottomOfGetttingStartedView()
        }
    }
}

struct BottomOfGetttingStartedView: View {
    var body: some View {
        VStack {
            ImageHeader()
            
            
            VStack (alignment: .leading, spacing: 30){
                
                ManageTasksTextView()
                
                GetStartedView()
                
            }
            .padding()
        }
    }
}

#Preview {
    GettingStartedView()
}
