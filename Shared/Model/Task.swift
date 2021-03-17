//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Harris-Stoertz, Rowan on 2021-03-16.
//

import Foundation

class Task: Identifiable, ObservableObject {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool) {
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }
}

let testData = [
    Task(description: "Reminder description 1", priority: .high, completed: true),
    Task(description: "Reminder description 2", priority: .medium, completed: false),
    Task(description: "Reminder description 3", priority: .low, completed: false),
]
