import Foundation

func fetchMockAppleCalendarTasks() -> [Task] {
    return [
        Task(title: "Apple Calendar Task 1", time: Date().addingTimeInterval(5400)),
        Task(title: "Apple Calendar Task 2", time: Date().addingTimeInterval(7800))
    ]
}

func fetchMockReminders() -> [Task] {
    return [
        Task(title: "Reminder 1", time: Date().addingTimeInterval(9000)),
        Task(title: "Reminder 2", time: Date().addingTimeInterval(12000))
    ]
}
