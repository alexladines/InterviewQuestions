//
//  QuestionsTableViewController.swift
//  InterviewPractice
//
//  Created by Alex Ladines on 6/5/19.
//  Copyright © 2019 Alex Ladines. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController, QuestionsPresenter {
    var questionsController: QuestionsController?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionsController!.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "iOSQuestion", for: indexPath)
        guard let questionsController = questionsController else { return UITableViewCell() }
        cell.textLabel?.text = questionsController.questions[indexPath.row].question
        return cell
    }



}
