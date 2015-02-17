//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Pedro Pena on 2/9/15.
//  Copyright (c) 2015 Pedo Peña. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel: TaskModel!
    
    @IBOutlet weak var subTaskTextFiled: UITextField!
    
    @IBOutlet weak var taskTestField: UITextField!

    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.taskTestField.text = detailTaskModel.task
        self.subTaskTextFiled.text = detailTaskModel.subTask
        self.dueDatePicker.date = detailTaskModel.date
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelButtonTapped(sender: UIBarButtonItem)
    {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
