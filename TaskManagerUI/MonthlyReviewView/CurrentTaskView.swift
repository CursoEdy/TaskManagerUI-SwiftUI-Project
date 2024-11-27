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
                        .foregroundStyle(white1)
                    
                    Text("Mike and Anite")
                        .font(.footnote)
                        .fontWeight(.light)
                        .foregroundStyle(white1)
                    
                    HStack {
                        
                        let circleSize: CGFloat = 40
                        
                        HStack (spacing: -15){
                            
                            CircleImageView(
                                imageName: person2,
                                color: white1,
                                size: circleSize,
                                lineWidth: 1
                            )
                            
                            CircleImageView(
                                imageName: person3,
                                color: white1,
                                size: circleSize,
                                lineWidth: 1
                            )
                        }
                        
                        Spacer()
                        
                        VStack{
                            Text("Now")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundStyle(white1)
                        }
                    }
                }
            }
            
            Spacer()
        }
        .padding()
        .background(purple3)
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
        

    }
}

#Preview {
    ZStack {
        purple1.ignoresSafeArea()
        CurrentTaskView()
    }
}
