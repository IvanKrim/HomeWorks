//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 13.07.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var userLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = "Welcome, \(user.person.name)!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let personInfoVC = $0 as? PersonInfoViewController {
                personInfoVC.user = user
            } else if let personAvatarVC = $0 as? PersonAvatarViewController {
                personAvatarVC.user = user
            }
        }
    }
    
    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
}

// MARK: - hide NavigationController
extension InfoViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
