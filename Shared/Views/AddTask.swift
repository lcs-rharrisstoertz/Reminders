//
//  AddTask.swift
//  Reminders (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-17.
//

import SwiftUI

struct AddTask: View {
    
    @State private var description = ""
    @State private var priority = TaskPriority.low
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    TextField ("Description", text: $description)
                    
                    Picker("Priority", selection: $priority) {
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .toolbar {
                        ToolbarItem(placement: .primaryAction) {
                            Button("Save"){
                                saveTask()
                            }
                        }
                    }
                }
            }
            .navigationTitle("New Reminder")
        }
    }
    
    func saveTask(){
        
        
    }
    
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask()
    }
}
