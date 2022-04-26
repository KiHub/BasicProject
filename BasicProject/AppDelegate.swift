//
//  AppDelegate.swift
//  BasicProject
//
//  Created by  Mr.Ki on 26.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        let vc1 = SearchViewController()
        let vc2 = ContactsViewController()
        let vc3 = FavoritesViewController()
        
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        let nc1 = UINavigationController(rootViewController: vc1)
        let nc2 = UINavigationController(rootViewController: vc2)
        let nc3 = UINavigationController(rootViewController: vc3)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [nc1, nc2, nc3]
        
        window?.rootViewController = tabBarController
        
        return true
    }
    
    
    
    class SearchViewController: UIViewController {
        override func viewDidLoad() {
            title = "Search"
            view.backgroundColor = .cyan
        }
    }
    
    class ContactsViewController: UIViewController {
        override func viewDidLoad() {
            title = "Contacts"
            view.backgroundColor = .green
        }
    }
    
    class FavoritesViewController: UIViewController {
        override func viewDidLoad() {
            title = "Favorites"
            view.backgroundColor = .orange
        }
    }





}

