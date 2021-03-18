//
//  AddTask.swift
//  Reminders (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-17.
//

import SwiftUI

struct AddTask: View {
    
    //Get reference to store of tasks
    @ObservedObject var store: TaskStore
    
    @State private var description = ""
    @State private var priority = TaskPriority.low
    
    //Whether to show this view
    @Binding var showing: Bool
    
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
                }
            }
            .navigationTitle("New Reminder")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save"){
                        saveTask()
                    }
                }
            }
        }
    }
    
    func saveTask(){
        
        //add task to list
        store.tasks.append(Task(description: description,
                                priority: priority,
                                completed: false))
        
        //Dismiss this view
        showing = false
        
    }
    
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask(store: testStore, showing: .constant(true))
    }
}
