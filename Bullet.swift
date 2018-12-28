//
//  Bullet.swift
//  ARPlebShooter
//
//  Created by Brent Piephoff on 7/12/17.
//  Copyright © 2017 Brent Piephoff. All rights reserved.
//

import UIKit
import SceneKit

// Spheres that are shot at the "ships"
class Bullet: SCNNode {
    override init () {
        super.init()
        let sphere = SCNSphere(radius: 0.025)
        self.geometry = sphere
        let shape = SCNPhysicsShape(geometry: sphere, options: nil)
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: shape)
        self.physicsBody?.isAffectedByGravity = false        
        self.physicsBody?.categoryBitMask = CollisionCategory.bullets.rawValue
        self.physicsBody?.contactTestBitMask = CollisionCategory.target.rawValue
        self.physicsBody?.collisionBitMask = CollisionCategory.player.rawValue
        
        self.geometry?.materials.first?.diffuse.contents = UIColor.purple
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
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
