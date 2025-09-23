import Foundation

class TaskManager: ObservableObject {
    @Published var tasks: [Task] = [
        Task(title: "Write report", time: Date().addingTimeInterval(3600)),
        Task(title: "Meeting with team", time: Date().addingTimeInterval(7200)),
        Task(title: "Check emails", time: Date().addingTimeInterval(10800))
    ]
    
    func markDone(_ task: Task) {
        if let idx = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[idx].isCompleted = true
        }
    }
    
    func snooze(_ task: Task) {
        if let idx = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[idx].snoozeCount += 1
        }
    }
    
    func swap(_ task: Task, with other: Task) {
        // Simple swap logic for demo
        if let idx1 = tasks.firstIndex(where: { $0.id == task.id }),
           let idx2 = tasks.firstIndex(where: { $0.id == other.id }) {
            let temp = tasks[idx1]
            tasks[idx1] = tasks[idx2]
            tasks[idx2] = temp
        }
    }
}
