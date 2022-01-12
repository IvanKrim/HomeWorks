//
//  PersonInfoViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 23.07.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet var personNameLabel: UILabel!
    @IBOutlet var personSurnameLabel: UILabel!
    @IBOutlet var personAgeLabel: UILabel!
    @IBOutlet var personDesciptionLabel: UILabel!
    

    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

   
        personNameLabel.text = "Name: \(user.person.name)"
        personSurnameLabel.text = "Surname: \(user.person.surname)"
        personAgeLabel.text = "Age: \(user.person.age)"
        personDesciptionLabel.text = "Description: \(user.person.description)"
    }
}
