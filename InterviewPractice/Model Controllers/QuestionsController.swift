//
//  QuestionController.swift
//  InterviewPractice
//
//  Created by Alex Ladines on 6/5/19.
//  Copyright © 2019 Alex Ladines. All rights reserved.
//

import Foundation

class QuestionsController {
    var questions: [Question] = [
        Question(question: "What is let and var in swift?",
                 answer: """
`var` keyword is used to declare a variable`let` keyword is used to declare a constant variable Variables created with these are  either values or references/pointers.
When you declare a variable using let, you have to give it a value upon declaration or within the calling scope and you can’t reassign it.
When you declare a variable using var it can be assigned right away or at later time or it can be nil.
At the end of the day,  `let, var, nil, and Optionals` help define how you handle state in your apps."
""")
    ]

    func addQuestion(withDetails detail: String) {
        questions.append(Question(question: detail, answer: ""))
    }

    func deleteQuestion(with indexPath: IndexPath) {
        questions.remove(at: indexPath.row)
    }
}
