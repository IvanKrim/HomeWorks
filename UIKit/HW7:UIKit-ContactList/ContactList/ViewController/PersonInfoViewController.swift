//
//  PersonInfoViewController.swift
//  ContactList
//
//  Created by Kalabishka Ivan on 07.08.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persons: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Title заголовка 
        navigationItem.title = persons.fullName
        
        phoneLabel.text = persons.phone
        emailLabel.text = persons.fullEmail

    }
    

  
}
