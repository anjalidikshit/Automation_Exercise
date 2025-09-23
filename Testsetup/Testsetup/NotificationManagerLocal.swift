import UserNotifications

class NotificationManagerLocal {
    func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
            // Handle result
        }
    }
    
    func scheduleNotification(task: Task) {
        let content = UNMutableNotificationContent()
        content.title = "Task Reminder"
        content.body = "It's time for: \(task.title)"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: task.id.uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
}
