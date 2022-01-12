//
//  PersonAvatarViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 23.07.2021.
//

import UIKit

class PersonAvatarViewController: UIViewController {
    
    @IBOutlet var avatarImage: UIImageView! {
        didSet {
            avatarImage.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet var fullNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImage.image = UIImage(named: user.person.avatar)
        fullNameLabel.text = user.person.fullName
    }
    
    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
}
