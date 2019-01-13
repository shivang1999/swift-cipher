//
//  Protocol Delegates - Question Generator.swift
//  
//
//  Created by Shivang Ranjan on 13/01/19.
//
import UIKit

//class for a question- going to give a few properties.
//Creating enums for question types and answer types

class Question {
    var type : QuestionType
    var query: String
    var answer : String
    
    init(type: QuestionType, query: String, answer: String){
    self.type = type
    self.query = query
    self.answer = answer
    }
}

enum QuestionType : String {
    case trueFalse = "The sky is blue. "
    case multipleChoice = "Who is the ugliest beatle : John ,Paul, george, or Ringo?"
    case shortAnswer = "What is the capital of UP?"
    case essay : "In 50 words, explain mlecular fusion"
 
    let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType : String {
    case trueFalse = "True"
    case multipleChoice = "Srgt. Pepper"
    case shortAnswer = "Salem"
    case essay = "Molecular fusion happens when a daddy molecule and a mummy molecule love each other verryy much"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay] //Enums may not contain stored property
    
}


protocol  QuestionGenerator {
    func generateRandomFunction() -> Question
}
class Answer {}
protocol AnswerGenerator : QuestionGenerator {
    func generateRandomAnswer() -> Answer
}

class Jeopardy: AnswerGenerator {
    generateRandomQuestion() -> Question
}
class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type :randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
        
    }
}
//enumeations - How are enumerations, delegates and protocols used?

let quiz = Quiz()
let question =  quiz.generateRandomQuestion()

print("QUESTION TYPE: \(question.type) \n QUERY: (question.query) \n ANSWER : (question.answer)")


