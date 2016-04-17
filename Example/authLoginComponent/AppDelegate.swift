//
//  AppDelegate.swift
//  authLoginComponent
//
//  Created by Esteban Torres on 04/15/2016.
//  Copyright (c) 2016 Esteban Torres. All rights reserved.
//

import UIKit

import auth0LoginComponent

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }

   func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
      return Auth0LoginComponent.application(application, openURL: url, sourceApplication: sourceApplication, annotation: annotation)
   }
}

