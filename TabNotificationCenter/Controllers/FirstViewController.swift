//
//  FirstViewController.swift
//  TabNotificationCenter
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  private let firstView = FirstView()
  
  private var dataModel: DataModel!
  
  init(dataModel: DataModel) {
    super.init(nibName: nil, bundle: nil)
    self.dataModel = dataModel
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func loadView() {
    view = firstView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .yellow
    firstView.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
  }
  
  @objc
  private func buttonPressed() {
    firstView.textField.resignFirstResponder()
    dataModel.setName(name: firstView.textField.text ?? "")
  }
}
