//
//  GameViewController.swift
//  GregAudoApp
//
//  Created by G Bear on 2020-02-24.
//  Copyright © 2020 Rooh Bear Corporation. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation
import AVKit

class GameViewController: UIViewController
{
    var thePlayer:AVPlayer!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        if let view = self.view as! SKView? {
            if let scene = SKScene(fileNamed: "GameScene") {
                scene.scaleMode = .aspectFill           // Set the scale mode to scale to fit the window

                // Present the scene
                view.presentScene(scene)
            }

            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool
    {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
