//
//  quizesClass.swift
//  Quiz
//
//  Cesa Salaam
// 
//

import UIKit

class Quiz {
    
    private var Question: String = ""
    private var Answer: String = ""
    
    init(question: String, answer: String){
        self.Question = question
        self.Answer = answer
        
    }
    
    func getQuestion() -> String {
        return Question
    }
    
    func getAnswer() -> String {
        return Answer
    }
    
    func setQuestion(Question: String){
        
        self.Question = Question
    }
    
    func setAnswer(Answer: String){
        
        self.Answer = Answer
    }
}