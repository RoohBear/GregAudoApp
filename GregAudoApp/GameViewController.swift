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
    
        if let theMoviePath = Bundle.main.url(forResource:"IndiaFightScene", withExtension:".mp4") {
            self.thePlayer = AVPlayer.init(url:theMoviePath)
            let playerLayer = AVPlayerLayer(player:self.thePlayer)
            playerLayer.frame = CGRect.init(x:100, y:100, width:500, height:500)    //   self.view.bounds
            self.view.layer.addSublayer(playerLayer)
            self.thePlayer.play()
        }
        
        
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
                view.backgroundColor = UIColor.init(displayP3Red: 0.5, green: 0.6, blue: 0.1, alpha: 0.5)
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
