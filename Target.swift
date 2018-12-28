//
//  Target.swift
//  ARPlebShooter
//
//  Created by Brent Piephoff on 7/26/17.
//  Copyright © 2017 Brent Piephoff. All rights reserved.
//

import UIKit
import SceneKit

// Floating boxes that appear around you
class Target: SCNNode {
    override init() {
        super.init()
        var geometry:SCNGeometry
        
        switch ShapeType.random() {
        case .Box:
            geometry = SCNBox(width: 0.05, height: 0.05, length: 0.05, chamferRadius: 0.0)
        case .Sphere:
            geometry = SCNSphere(radius: 0.025)
        case .Capsule:
            geometry = SCNCapsule(capRadius: 0.015, height: 0.035)
        case .Cylinder:
            geometry = SCNCylinder(radius: 0.02, height: 0.05)
        }

        
        self.geometry = geometry
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
        self.physicsBody?.isAffectedByGravity = false
        self.physicsBody?.charge = -0.5
        self.physicsBody?.categoryBitMask = CollisionCategory.target.rawValue
        self.physicsBody?.contactTestBitMask = CollisionCategory.bullets.rawValue
        self.physicsBody?.collisionBitMask = CollisionCategory.target.rawValue
        
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: "abstract")
        self.geometry?.materials  = [material, material, material, material, material, material]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public enum ShapeType:Int {
    case Box = 0
    case Sphere
    case Capsule
    case Cylinder
    
    static func random() -> ShapeType {
        let maxValue = Cylinder.rawValue
        let rand = arc4random_uniform(UInt32(maxValue+1))
        return ShapeType(rawValue: Int(rand))!
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
