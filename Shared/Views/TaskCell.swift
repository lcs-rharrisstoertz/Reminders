//
//  TaskCell.swift
//  Reminders (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-17.
//

import SwiftUI

struct TaskCell: View {
    
    @ObservedObject var task: Task
    
    var taskColor: Color {
        switch task.priority {
        case .high:
            return color.red
        default:
            <#code#>
        }
    }
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    
                    task.completed.toggle()
                    
                    }
            Text(task.description)
                }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: testData[0])
    }
}
