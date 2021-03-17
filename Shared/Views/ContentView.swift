//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: TaskStore
    
    var body: some View {
        List(store.tasks) {task in
            HStack {
                Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        print("State of list BEFORE toggle")
                        for (index, task) in store.tasks.enumerated() {
                            print("Task at \(index) has completed value of \(task.completed)")
                        }
                        print("About to toggle")
                        
                        task.completed.toggle()
                        
                        print("just toggled")
                        // Current state of the list:
                        print("State of list AFTER toggle")
                        for (index, task) in store.tasks.enumerated() {
                            print("Task at \(index) has completed value of \(task.completed)")
                        }
                    }
                
                
                Text(task.description)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}
