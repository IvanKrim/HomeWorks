//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 13.07.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var userLabel: UILabel!
  
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // посредник
        userLabel.text = "Welcome, \(user ?? "")"
    }
    
    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
    
}
