//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Lena Wang on 6/23/20.
//  Copyright © 2020 Lena Wang. All rights reserved.
//

import UIKit

var previousVC = ToDoTableTableViewController()

class AddToDoViewController: UIViewController {

    @IBOutlet weak var UITextField: UITextField!
    
    @IBOutlet weak var UISwitch: UISwitch!
    
    
    @IBAction func addTapped(_ sender: UIButton) {
        
    let toDo = ToDo()

    if let titleText = UITextField.text {
        toDo.name = titleText
        toDo.important = UISwitch.isOn}
        
        
    previousVC.toDos.append(toDo)
    previousVC.tableView.reloadData()
    navigationController?.popViewController(animated: true)

    }
    
    

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
