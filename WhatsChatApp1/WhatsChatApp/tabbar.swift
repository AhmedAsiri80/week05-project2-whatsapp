//
//  tabbar.swift
//  WhatsChatApp
//
//  Created by Ahmed Assiri on 27/03/1443 AH.
//

import UIKit

class TabBar: UITabBarController, UITabBarControllerDelegate  {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let item1 = Contect()
        let item2 = Profile()
       let icon1 = UITabBarItem(title: "Contact", image: UIImage(systemName: "message.fill"), selectedImage: UIImage(systemName: "message.fill"))
        let icon2 = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), selectedImage: UIImage(systemName: "person.fill"))
       item1.tabBarItem = icon1
        item2.tabBarItem = icon2
        let controllers = [item1,item2]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
    }
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
    }
    
    
}