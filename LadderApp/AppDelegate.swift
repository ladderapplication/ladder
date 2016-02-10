//
//  AppDelegate.swift
//  LadderApp
//
//  Created by Christian Chartier on 2016-02-01.
//  Copyright © 2016 Ladder. All rights reserved.
//

import UIKit
import Parse
import ParseCrashReporting

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        // Parse
        ParseCrashReporting.enable()
        Parse.setApplicationId("PtZqErbomwa1lklcZyPhbeV3uh4O43RoBqn2qmXb", clientKey: "KLROlWePJDL4ExAW79z9yIiqoXQRH0j3XoeyHlzv")
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        return true
    }

}
