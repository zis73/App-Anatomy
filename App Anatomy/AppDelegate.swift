//
//  AppDelegate.swift
//  App Anatomy
//
//  Created by student on 28.09.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController: ViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        viewController = window?.rootViewController as? ViewController
        viewController?.launchCounter += 1
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        viewController?.resignCounter += 1
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        viewController?.backgroundCounter += 1
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        viewController?.foregroundCounter += 1
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        viewController?.activeCounter += 1
    }

    func applicationWillTerminate(_ application: UIApplication) {
        viewController?.terminateCounter += 1
    }


}

