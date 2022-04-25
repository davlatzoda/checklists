//
//  ViewController.swift
//  checklists
//
//  Created by Парвин Давлатзода on 15/04/22.
//

import UIKit

class MainViewController: UITableViewController {

    let groups: [CheckListGroup] = [
        CheckListGroup(title: "Birthdays", imageName: "Birthdays"),
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
        let group = groups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
        cell.titleLabel.text = group.title
        cell.iconView.image = UIImage(named: group.imageName)
        return cell
    }
}

