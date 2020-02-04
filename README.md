# TabNotificationCenter

Posting data changes using **NotificationCenter**.

#### Post changes via NotificationCenter from object broadcasting changes
```swift 
NotificationCenter.default.post(name: Notification.Name(DataModel.nameSetNotification), object: nil, userInfo:[DataModel.nameSetNotification:name])
```

#### Add the object listening for changes as an observer
```swift 
NotificationCenter.default.addObserver(self, selector: #selector(didChangeName), name: Notification.Name(DataModel.nameSetNotification), object: nil)
```

#### Method selector to be executed when notification is triggerd 

```swift 
@objc private func didChangeName(_ notification: Notification) {
  guard let name = notification.userInfo?[DataModel.nameSetNotification] as? String else {
    return
  }
  secondView.label.text = name
}
```
