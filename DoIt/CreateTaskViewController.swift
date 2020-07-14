//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by vignesh on 7/10/20.
//  Copyright © 2020 AmVi. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    var previousVC = TasksViewController()
    
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    @IBAction func addTapped(_ sender: AnyObject) {
        //Create a Task from outlet info.
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add new task ti arry in previous view controller.
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
}
