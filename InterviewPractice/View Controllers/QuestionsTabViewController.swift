//
//  QuestionsTabViewController.swift
//  InterviewPractice
//
//  Created by Alex Ladines on 6/5/19.
//  Copyright © 2019 Alex Ladines. All rights reserved.
//

import UIKit

//To be shared across different tabs
protocol QuestionsPresenter: AnyObject {
    var questionsController: QuestionsController! { set get }
}

class QuestionsTabViewController: UITabBarController {
    let questionsController = QuestionsController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Pass the questionsController to child view controllers
        // i.e. : share data between all of the managed screens

        for childViewController in children {
            if let childViewController = childViewController as? QuestionsPresenter {
                childViewController.questionsController = questionsController
            }
        }
    }


}
