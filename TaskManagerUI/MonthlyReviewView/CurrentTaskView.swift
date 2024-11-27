//
//  CurrentTaskView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct CurrentTaskView: View {
    var body: some View {
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
                        
                        let circleSize: CGFloat = 40
                        
                        HStack (spacing: -15){
                            
                            CircleImageView(
                                imageName: person2,
                                color: White,
                                size: circleSize,
                                lineWidth: 1
                            )
                            
                            CircleImageView(
                                imageName: person3,
                                color: White,
                                size: circleSize,
                                lineWidth: 1
                            )
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
        }
        .padding()
        .background(Purple3)
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
        

    }
}

#Preview {
    ZStack {
        Purple1.ignoresSafeArea()
        CurrentTaskView()
    }
}
