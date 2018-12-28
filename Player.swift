//
//  Player.swift
//  ARPlebShooter
//
//  Created by Brent Piephoff on 7/12/17.
//  Copyright © 2017 Brent Piephoff. All rights reserved.
//

// Currently acts solely as a collision node that tracks when the player is hit by a ship
import UIKit
import SceneKit

class Player: SCNNode {
    override init() {
        super.init()
        let box = SCNBox(width: 0.5, height: 1, length: 0.5, chamferRadius: 0)
        self.geometry = box
        let shape = SCNPhysicsShape(geometry: box, options: nil)
        self.physicsBody = SCNPhysicsBody(type: .static, shape: shape)
        self.physicsBody?.isAffectedByGravity = false
        self.opacity = 0.01
        
        self.physicsField = SCNPhysicsField.electric()
        
        // see http://texnotes.me/post/5/ for details on collisions and bit masks
        self.physicsBody?.categoryBitMask = CollisionCategory.player.rawValue
        self.physicsBody?.contactTestBitMask = CollisionCategory.target.rawValue
        self.physicsBody?.collisionBitMask = CollisionCategory.player.rawValue
        
        // add texture
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "abstract")
        self.geometry?.materials  = [material, material, material, material, material, material]
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
