import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
    var messageCount = 0
    
    // Holds the questions and answers in the conversation
    var messages = [Message]()
    
    /// Add a new question to the conversation
    func add(question: String) {
        print("Asked to add question: \(question)")
        
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
        
        messageCount += 1
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
        
        messageCount += 1
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asked for message at index \(index)")
        
        return messages[index]
    }
}
