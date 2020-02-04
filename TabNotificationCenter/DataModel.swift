//
//  DataModel.swift
//  TabNotificationCenter
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation

final class DataModel {
  
  static let nameSetNotification = "NameSetNotification"
  
  private var name = ""
  
  public func getName() -> String {
    return name
  }
  
  public func setName(name: String) {
    self.name = name
    // use notification center to broadcast changes
    NotificationCenter.default.post(name: Notification.Name(DataModel.nameSetNotification), object: nil, userInfo: [DataModel.nameSetNotification:name])
  }
}
