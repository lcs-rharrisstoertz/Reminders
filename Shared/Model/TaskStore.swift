//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-16.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
}

let testStore = TaskStore(tasks: testData)
