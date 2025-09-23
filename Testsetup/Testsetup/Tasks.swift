import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var time: Date
    var snoozeCount: Int = 0
    var isCompleted: Bool = false
}
