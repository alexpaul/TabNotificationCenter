//
//  ThirdView.swift
//  TabNotificationCenter
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class ThirdView: UIView {
  
  public lazy var label: UILabel = {
    let l = UILabel()
    return l
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
    setupLabel()
  }
    
  private func setupLabel() {
    addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([label.centerXAnchor.constraint(equalTo: centerXAnchor),
                                 label.centerYAnchor.constraint(equalTo: centerYAnchor)])
  }

}
