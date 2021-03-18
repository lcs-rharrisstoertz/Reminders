//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2021-03-16.
//

import SwiftUI

struct ContentView: View {
    
    //stores tasks
    @ObservedObject var store: TaskStore
    
    //Controls whether add task view is showing
    @State private var showingAddTask = false
    
    var body: some View {
        List(store.tasks) {task in
            TaskCell(task: task)
        }
        .navigationTitle("Reminders")
        .toolbar{
            ToolbarItem(placement: .primaryAction){
                Button("Add") {
                    showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            AddTask(store:store, showing: $showingAddTask)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}
