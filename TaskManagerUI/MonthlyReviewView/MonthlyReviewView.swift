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
                HStack {
                    VStack (alignment: .leading, spacing: 7) {
                        Text("Hi Edy")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(White)
                        
                        Text("6 Tasks are pending")
                            .font(.headline)
                            .fontWeight(.light)
                            .foregroundStyle(White)
                    }
                    Spacer()
                }.padding()
                
                HStack {
                    VStack {
                        VStack (alignment: .leading, spacing: 7) {
                            Text("Mobile App Design")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundStyle(White)
                            
                            Text("Mike and Anite")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundStyle(White)
                            
                            HStack {
                                HStack (spacing: -15){
                                    Circle()
                                        .stroke(lineWidth: 2)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                        
                                    Circle()
                                        .stroke(lineWidth: 2)
                                        .fill(Color.white)
                                        .frame(width: 50, height: 50)
                                }
                                
                                Spacer()
                                
                                VStack{
                                    Text("Now")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(White)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                }.padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    MonthlyReviewView()
}
