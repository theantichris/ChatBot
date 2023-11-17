import Foundation
class ConversationDataSource {
    // Holds the questions and answers in the conversation
    var messages = [openingLine]
    
    /// The number of Messages in the conversation
    var messageCount: Int {
        return messages.count
    }
    
    /// Add a new question to the conversation
    func add(question: String) {
        print("Asked to add question: \(question)")
        
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        print("Asked to add answer: \(answer)")
        
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asked for message at index \(index)")
        
        return messages[index]
    }
}
