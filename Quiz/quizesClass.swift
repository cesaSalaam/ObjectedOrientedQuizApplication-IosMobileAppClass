//
//  quizesClass.swift
//  Quiz
//
//  Created by Lifoma Salaam on 1/28/16.
//  Copyright © 2016 Lifoma Salaam. All rights reserved.
//

import Foundation

class Quiz {
    
    var Question: String = ""
    var Answer: String = ""
    
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
    
    func setQuestion() -> String {
        
        return Question
    }
    
    func setAnswer() -> String {
        
        return Question
    }
}