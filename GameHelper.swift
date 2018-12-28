//
//  GameHelper.swift
//  ARPlebShooter
//
//  Created by Brent Piephoff on 7/15/17.
//  Copyright © 2017 Brent Piephoff. All rights reserved.
//

class GameHelper {
    static let sharedInstance = GameHelper()
    
    var score:Int
    var state = GameStateType.TapToPlay
    var liveTargets = [Target]()
    
    private init() {
        score = 0
    }
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
    func resetGame() {
        score = 0
    }
    
    enum GameStateType {
        case TapToPlay
        case Playing
    }
}

struct CollisionCategory: OptionSet {
    let rawValue: Int
    
    static let bullets  = CollisionCategory(rawValue: 1 << 0) //moves 0 bits to left for 0000001
    static let target = CollisionCategory(rawValue: 1 << 1) //moves 1 bits to left for 00000001 then you have 00000010
    static let player = CollisionCategory(rawValue: 1 << 2) //moves 1 bits to left for 00000001 then you have 00000100
}
