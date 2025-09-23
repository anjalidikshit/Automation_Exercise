import Foundation

func fetchMockGoogleCalendarTasks() -> [Task] {
    return [
        Task(title: "Google Calendar Task A", time: Date().addingTimeInterval(15000)),
        Task(title: "Google Calendar Task B", time: Date().addingTimeInterval(18000))
    ]
}
