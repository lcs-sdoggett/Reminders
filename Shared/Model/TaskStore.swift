//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Doggett, Scott on 2021-01-23.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks: [Task] = []) {
        self.tasks = tasks
    }
}

let testStore = TaskStore(tasks: testData)
