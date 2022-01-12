//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Kalabishka Ivan on 09.08.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2
        setupViewControllers(with: persons)
    }
    
    // 1
    // передаем экземпляр моделей через tabBarController
    private func setupViewControllers(with persons: [Person]) {
        guard let personListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        personListVC.persons = persons
        sectionVC.persons = persons
    }
}
