//
//  SecondViewController.swift
//  TabNotificationCenter
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
  private let secondView = SecondView()
  
  init() {
    super.init(nibName: nil, bundle: nil)
    registerForNofifications()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  override func loadView() {
     view = secondView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemOrange
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
    secondView.label.text = name
  }
  
  deinit {
    print("deinit")
    unregisterForNotifications()
  }
}

