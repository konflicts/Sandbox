//
//  ViewController.swift
//  TaskIt
//
//  Created by Pedro Pena on 2/3/15.
//  Copyright (c) 2015 Pedo Peña. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var taskArray:[Dictionary<String,String>] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let task1:Dictionary = ["task":"Study French","subtask":"Verbs","date":"01/14/2014"]
        let task2:Dictionary = ["task":"Eat","subtask":"Burger","date":"01/14/2014"]
        let task3:Dictionary = ["task":"Gym","subtask":"Leg Day","date":"01/14/2014"]
        
        taskArray = [task1,task2,task3]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //UITableDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let taskDict:Dictionary = taskArray[indexPath.row]
        
        
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        cell.taskLabel.text = taskDict["task"]
        cell.descriptionLabel.text = taskDict["subtask"]
        cell.dateLabel.text = taskDict["date"]
        
        return cell
    }
    //UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}

