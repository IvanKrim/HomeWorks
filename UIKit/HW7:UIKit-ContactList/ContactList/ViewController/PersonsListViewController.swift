//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Kalabishka Ivan on 07.08.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    // 1
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    // 2 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row] // говорим передай профиль определенного юзера
        print(indexPath.row) // 0, 1, 2, 3, 4, 5, 6
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let personInfoVC = segue.destination as! PersonInfoViewController
            personInfoVC.persons = persons[indexPath.row]
        }
    }
}
