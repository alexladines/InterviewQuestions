//
//  Question.swift
//  InterviewPractice
//
//  Created by Alex Ladines on 6/5/19.
//  Copyright © 2019 Alex Ladines. All rights reserved.
//

import Foundation

class Question {
    var question: String
    var answer: String

    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }

    func updateAnswer(withNewAnswer answer: String) {
        self.answer = answer
    }
}
