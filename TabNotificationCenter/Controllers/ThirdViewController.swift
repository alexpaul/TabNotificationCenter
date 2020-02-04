//
//  ThirdViewController.swift
//  TabNotificationCenter
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
  
  private let thirdView = ThirdView()
  
  init() {
    super.init(nibName: nil, bundle: nil)
    registerForNofifications()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  override func loadView() {
    view = thirdView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemTeal
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)
    registerForNofifications()
  }
  
  private func registerForNofifications() {
    NotificationCenter.default.addObserver(self, selector: #selector(didChangeName), name: Notification.Name(DataModel.nameSetNotification), object: nil)
  }
  
  private func unregisterForNotifications() {
    NotificationCenter.default.removeObserver(self, name: Notification.Name(DataModel.nameSetNotification), object: nil)
  }
  
  @objc private func didChangeName(_ notification: Notification) {
    guard let name = notification.userInfo?[DataModel.nameSetNotification] as? String else {
      return
    }
    thirdView.label.text = name
  }
  
  deinit {
    print("deinit")
    unregisterForNotifications()
  }
}

