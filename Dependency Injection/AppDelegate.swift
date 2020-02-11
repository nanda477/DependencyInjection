//
//  AppDelegate.swift
//  Dependency Injection
//
//  Created by D2V iMac on 11/02/20.
//  Copyright © 2020 D2V iMac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let someSharedService = SomeService.shared
//        if let vc = window?.rootViewController as? ViewController {
//            vc.someService = someSharedService
//        }
        
        let vc = ViewController(service: someSharedService)
        let wind = UIWindow(frame: UIScreen.main.bounds)
        wind.rootViewController = vc
        wind.makeKeyAndVisible()
        self.window = wind
        
        
        
        
        return true
    }

}

