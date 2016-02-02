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
        Parse.setApplicationId("Dnv2OtCwVxPfwUersBc6B7C5mzaPpaUyYnOaG2Hh", clientKey: "G7gtgV0jUEnlHRDCRSJwgik4QxtK7tdQhL0YOcFf")
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        return true
    }

}

