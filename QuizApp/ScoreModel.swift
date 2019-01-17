//
//  ScoreModel.swift
//  QuizApp
//
//  Created by Samuel Yanez on 10/12/17.
//  Copyright © 2017 Samuel Yanez. All rights reserved.
//

import Foundation

class ScoreModel {
    
   var correctAnswers: Int = 0
   var incorrectAnswers: Int = 0
    
    func reset() {
        correctAnswers = 0
        incorrectAnswers = 0
    }

    func incrementCorrectAnswers() {
        correctAnswers += 1
    }
    
    func incrementIncorrectAnswers() {
        incorrectAnswers += 1
    }
    
    func getQuestionsAsked() -> Int {
        return correctAnswers + incorrectAnswers
    }
    
    func getScore() -> Double {
        let percentaile = Double(correctAnswers) / Double(getQuestionsAsked())
        
        return percentaile
    }
}
