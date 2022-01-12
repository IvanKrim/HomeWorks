//
//  AppDelegate.swift
//  CoreDataLesson
//
//  Created by Kalabishka Ivan on 10.05.2021.
//

import UIKit
import CoreData // необходимо будет убрать и всю красноту перенести в storeManager

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        //определяем свойство как ключевое и видимое
        window?.makeKeyAndVisible()
        //определяем стартовый VC через Navigation VC
        window?.rootViewController = UINavigationController(rootViewController: TaskListViewController())
        return true
    }

    // MARK: - Core Data stack

    // точка входа в БД
    lazy var persistentContainer: NSPersistentContainer = { //будет находится в StorageManager
        let container = NSPersistentContainer(name: "CoreDataLesson")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            
            if let error = error as NSError? {
              fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    //метод вызывается всегда перед тем как приложение будет выгружено из памяти (упадет/закроется)
    func applicationWillTerminate(_ application: UIApplication) {
        saveContext()
    }

    // MARK: - Core Data Saving support
    //метод сохраняющий данные на постоянное хранилище
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

