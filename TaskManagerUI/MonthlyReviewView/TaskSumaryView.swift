//
//  TaskSumaryView.swift
//  TaskManagerUI
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct TaskSumaryView: View {
    var body: some View {
        GeometryReader { geametry in
            HStack {
                Spacer()
                VStack {
                    SumaryItemView(
                        numberOfTasks: 22,
                        text: "Done",
                        dimX: geametry.size.width / 2 - 20,
                        dimY: geametry.size.height * 2 / 3 - 20
                    )
                    SumaryItemView(
                        numberOfTasks: 12,
                        text: "onGoing",
                        dimX: geametry.size.width / 2 - 20,
                        dimY: geametry.size.height / 3 - 20
                    )
                }
                VStack {
                    SumaryItemView(
                    numberOfTasks: 7,
                    text: "in Progress",
                    dimX: geametry.size.width / 2 - 20,
                    dimY: geametry.size.height / 3 - 20
                )
                    SumaryItemView(
                        numberOfTasks: 15,
                        text: "Work for Reviews.",
                        dimX: geametry.size.width / 2 - 20,
                        dimY: geametry.size.height * 2 / 3 - 20
                    )
                    
                }
                Spacer()
            }
        }
    }
}

struct SumaryItemView: View {
    
    let numberOfTasks: Int
    let text: String
    let dimX: CGFloat
    let dimY: CGFloat
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 7)
                .fill(purple3)
            VStack (spacing: 15){
                Text("\(numberOfTasks)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(white1)
                Text("\(text)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(white1)
            }
        }.frame(width: dimX, height: dimY)
    }
}

#Preview {
    ZStack {
        purple1.ignoresSafeArea()
        TaskSumaryView()
            .frame(width: 300, height: 400)
    }
}
