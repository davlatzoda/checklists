//
//  ViewController.swift
//  checklists
//
//  Created by Парвин Давлатзода on 15/04/22.
//

import UIKit

class MainViewController: UITableViewController {

    let groups: [CheckListGroup] = [
        CheckListGroup(title: "Birthdays", imageName: "birthdaypic"),
        CheckListGroup(title: "Croceries", imageName: "groceeriespic"),
        CheckListGroup(title: "To Do", imageName: "todopic"),
        CheckListGroup(title: "Business Stuff", imageName: "pic")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let group: CheckListGroup = groups[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = group.title
        return cell
    }
}

