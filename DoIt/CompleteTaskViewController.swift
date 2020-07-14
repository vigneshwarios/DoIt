//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by vignesh on 7/10/20.
//  Copyright © 2020 AmVi. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    var task : Task? = nil


    @IBOutlet weak var taskLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if(task!.important){
            taskLabel.text = "❗️\(task!.name!)"
        }
        else{
            taskLabel.text = task!.name!
        }
        
    }
    

    @IBAction func completeTapped(_ sender: AnyObject) {
 let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //pop back
        navigationController!.popViewController(animated: true)
    }

}
