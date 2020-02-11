//
//  AppDelegate.swift
//  ProjetTest1
//
//  Created by user164174 on 2/10/20.
//  Copyright © 2020 user164174. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var tabPerson = [
        Person(firstname: "Alexandre", lastname: "Girbal", job:"responsable technique", department:"IG4"),
        Person(firstname: "Jeremie", lastname: "Dumont", job:"responsable technique", department:"IG4"),
        Person(firstname: "Alexandre", lastname: "Girbal", job:"responsable technique", department:"IG4"),
        Person(firstname: "Alexandre", lastname: "Girbal", job:"responsable technique", department:"IG4"),
        Person(firstname: "Alexandre", lastname: "Girbal", job:"responsable technique", department:"IG4"),
    ]
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

