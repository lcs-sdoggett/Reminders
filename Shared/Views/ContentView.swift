//
//  ContentView.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-23.
//

import SwiftUI

struct ContentView: View {
    
    // Stores all the tasks that are being tracked
    @ObservedObject var store: TaskStore
    
    // Controls weather the addTask view is showing
    @State private var showingAddTask = false
    
    var body: some View {
        List(store.tasks) { task in
            TaskCell(task: task)
        }
        .navigationTitle("Reminders")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            AddTask(showing: $showingAddTask)
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
