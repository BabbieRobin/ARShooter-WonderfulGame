//
//  AppDelegate.swift
//  ARPlebShooter
//
//  Created by Brent Piephoff on 7/12/17.
//  Copyright © 2017 Brent Piephoff. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //
    //        self.configureSession()
    //        self.beginPlaying()
    //    }
    //
    //    override func viewWillDisappear(_ animated: Bool) {
    //        super.viewWillDisappear(animated)
    //
    //        // Pause the view's session
    //        sceneView.session.pause()
    //    }
    //
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Release any cached data, images, etc that aren't in use.
    //    }
    //
    //    func configureSession() {
    //        if ARWorldTrackingConfiguration.isSupported { // checks if user's device supports the more precise ARWorldTrackingSessionConfiguration
    //            // equivalent to `if utsname().hasAtLeastA9()`
    //            // Create a session configuration
    //            let configuration = ARWorldTrackingConfiguration()
    //            configuration.planeDetection = .horizontal
    //
    //            // Run the view's session
    //            sceneView.session.delegate = self
    //            sceneView.session.run(configuration)
    //        } else {
    //            // slightly less immersive AR experience due to lower end processor
    //            let configuration = AROrientationTrackingConfiguration()
    //
    //            // Run the view's session
    //            sceneView.session.run(configuration)
    //        }
    //    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

