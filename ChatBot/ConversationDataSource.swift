import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
    var messageCount = 0
    
    /// Add a new question to the conversation
    func add(question: String) {
        print("Asked to add question: \(question)")
        
        messageCount += 1
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        
        messageCount += 1
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asked for message at index \(index)")
        return Message(date: Date(), text: "Hello, world!", type: .answer)
    }
}
