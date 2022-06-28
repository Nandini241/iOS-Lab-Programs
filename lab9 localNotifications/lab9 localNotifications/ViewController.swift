//
//  ViewController.swift
//  lab9 localNotifications
//
//  Created by student on 14/06/22.
//

import UIKit

class ViewController: UIViewController, UNUserNotificationCenterDelegate {
    @IBOutlet var localnotificationbutton1 : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            
        })
    }
    @IBAction func localNotificationButtonClick() {
        // Creating the notification content
        let content = UNMutableNotificationContent()
        
        // Adding title,subtitle, body and badge
        content.title = "JAIN UNIVERSITY"
        content.subtitle = "Apple's iOS LAB"
        content.body = "We are learning about iOS local notifications"
        content.badge = 1
        
        // Notification trigger
        // it will be called after 5 seconds
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        // gettting notification requests
        
        let request = UNNotificationRequest(identifier: "SimplifiedIOSNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().delegate = self
        
        // adding notificatio to notification center
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler:@escaping(UNNotificationPresentationOptions) -> Void) {
        // displaying ios local notification when app is in foreground
        completionHandler([.alert, .badge, .sound])
    }

}

