//
//  TabBarController.swift
//  TabNotificationCenter
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
  private var dataModel = DataModel()
  
  private lazy var firstVC: FirstViewController = {
    let viewcontroller = FirstViewController(dataModel: dataModel)
    viewcontroller.tabBarItem = UITabBarItem(title: "First",
                                             image: UIImage(systemName: "1.circle"),
                                             tag: 0)
    return viewcontroller
  }()
  
  private lazy var secondVC: SecondViewController = {
    let viewcontroller = SecondViewController()
    viewcontroller.tabBarItem = UITabBarItem(title: "Second",
                                             image: UIImage(systemName: "2.circle"),
                                             tag: 1)
    return viewcontroller
  }()
  
  private lazy var thirdVC: ThirdViewController = {
    let viewcontroller = ThirdViewController()
    viewcontroller.tabBarItem = UITabBarItem(title: "Third",
                                             image: UIImage(systemName: "3.circle"),
                                             tag: 2)
    return viewcontroller
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    viewControllers = [firstVC, secondVC, thirdVC]
  }
}
