//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by vignesh on 7/10/20.
//  Copyright © 2020 AmVi. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    @IBAction func addTapped(_ sender: AnyObject) {
        //Create a Task from outlet info.
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //pop back
        navigationController!.popViewController(animated: true)
    }
}
