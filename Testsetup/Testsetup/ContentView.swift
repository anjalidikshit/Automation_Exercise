import SwiftUI

struct ContentView: View {
    @StateObject var manager = TaskManager()
    @State private var showDialog = false
    @State private var selectedTask: Task?
    @State private var showSwapSheet = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(manager.tasks) { task in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(task.title)
                                .strikethrough(task.isCompleted)
                            Text("Time: \(task.time.formatted(date: .omitted, time: .shortened))")
                                .font(.caption)
                        }
                        Spacer()
                        Button("Action") {
                            selectedTask = task
                            showDialog = true
                        }
                        .disabled(task.isCompleted)
                    }
                }
            }
            .navigationTitle("Tasks")
            .alert("Task Action", isPresented: $showDialog, presenting: selectedTask) { t in
                Button("Done") {
                    manager.markDone(t)
                    showDialog = false
                }
                Button("Snooze") {
                    manager.snooze(t)
                    showDialog = false
                    if t.snoozeCount + 1 >= 3 {
                        showSwapSheet = true
                    }
                }
                Button("Swap") {
                    showSwapSheet = true
                }
                Button("Cancel", role: .cancel) {}
            } message: { t in
                Text("What would you like to do with '\(t.title)'?")
            }
            .sheet(isPresented: $showSwapSheet) {
                if let t = selectedTask {
                    SwapSheet(manager: manager, currentTask: t)
                }
            }
        }
    }
}

struct SwapSheet: View {
    @ObservedObject var manager: TaskManager
    var currentTask: Task
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Swap '\(currentTask.title)' with:")
                .font(.headline)
            List {
                ForEach(manager.tasks.filter { $0.id != currentTask.id && !$0.isCompleted }) { task in
                    Button(task.title) {
                        manager.swap(currentTask, with: task)
                        dismiss()
                    }
                }
            }
        }
    }
}
