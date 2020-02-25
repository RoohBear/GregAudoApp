//
//  GameScene.swift
//  GregAudoApp
//
//  Created by G Bear on 2020-02-24.
//  Copyright © 2020 Rooh Bear Corporation. All rights reserved.
//

import SpriteKit
import GameplayKit
import AudioToolbox


class GregLabelNode : SKLabelNode
{
    var direction:CGPoint!
    var doRotate = false
}

class GameScene: SKScene
{
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var arrTimers = [Timer]()

    override func didMove(to view: SKView)
    {
        // bongs
        // 5.2, 7.1, 8.9, 10.9, 12.6, 14.4, 16.2, 18.1, 20.0, 21.8,
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:5.2)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:7.1)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:8.9)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:10.9)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:12.6)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:14.4)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:16.2)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:18.1)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:20.0)
        self.createTextTimer("Bong!", timeMinute:0, timeSecond:21.8)

        // pirouette
        // 28.9, 29.6, 1:35.7,
        self.createTextTimer("Pirouette", timeMinute:0, timeSecond:28.9)
        self.createTextTimer("Pirouette", timeMinute:0, timeSecond:29.6)
        self.createTextTimer("Spin", timeMinute:1, timeSecond:35.7)

        // stomp
        // 34.6,
        self.createTextTimer("Stomp!", timeMinute:0, timeSecond:34.6)

        // whip
        // 36.8, 41.1, 41.5, 45.7, 1:2.4,
        self.createTextTimer("Whip!", timeMinute:0, timeSecond:36.8)
        self.createTextTimer("Whip", timeMinute:0, timeSecond:41.1)
        self.createTextTimer("Whip!", timeMinute:0, timeSecond:41.5)
        self.createTextTimer("Whip!", timeMinute:0, timeSecond:45.7)
       // self.createTextTimer("Whip 5!", timeMinute:1, timeSecond:2.4)

        // step
        // 47.2, 48.3, 1:9.0, 1:10.5, 1:22.8, 1:24.9, 1:29.4, 1:30.5, 1:31.7, 1:33.4, 2:2.7, 2:5.8, 2:7.7, 2:9.5, 2:11.0,
        // 2:23.4, 2:23.8, 2:24.6, 2:25.5, 2:33.8, 2:35.6,
        // 3:0, 3:1.1, 3:2.2, 3:3.3,
        self.createTextTimer("Step", timeMinute:0, timeSecond:47.2)
        self.createTextTimer("Step", timeMinute:0, timeSecond:48.3)
        self.createTextTimer("Step", timeMinute:1, timeSecond:9.0)
        self.createTextTimer("Step", timeMinute:1, timeSecond:10.5)
        self.createTextTimer("Step", timeMinute:1, timeSecond:22.8)
        self.createTextTimer("Step", timeMinute:1, timeSecond:24.9)
        self.createTextTimer("Step", timeMinute:1, timeSecond:29.4)
        self.createTextTimer("Step", timeMinute:1, timeSecond:30.5)
        self.createTextTimer("Step", timeMinute:1, timeSecond:31.7)
        self.createTextTimer("Step", timeMinute:1, timeSecond:33.4)
        self.createTextTimer("Step", timeMinute:2, timeSecond:2.7)
        self.createTextTimer("Step", timeMinute:2, timeSecond:5.8)
        self.createTextTimer("Step", timeMinute:2, timeSecond:7.7)
        self.createTextTimer("Step", timeMinute:2, timeSecond:9.5)
        self.createTextTimer("Step", timeMinute:2, timeSecond:11.0)
        self.createTextTimer("Step", timeMinute:2, timeSecond:23.4)
        self.createTextTimer("Step", timeMinute:2, timeSecond:23.8)
        self.createTextTimer("Step", timeMinute:2, timeSecond:24.6)
        self.createTextTimer("Step", timeMinute:2, timeSecond:25.5)
        self.createTextTimer("Step", timeMinute:2, timeSecond:33.8)
        self.createTextTimer("Step", timeMinute:2, timeSecond:35.6)
        self.createTextTimer("Step", timeMinute:3, timeSecond:0)
        self.createTextTimer("Step", timeMinute:3, timeSecond:1.1)
        self.createTextTimer("Step", timeMinute:3, timeSecond:2.2)
        self.createTextTimer("Step", timeMinute:3, timeSecond:3.3)

        // adams apple chop!
        // 2:17.2
        self.createTextTimer("Adam's Apple Chop!", timeMinute:2, timeSecond:17.2, vibrate:true)

        // chop!
        // 2:17.2 + 0.9, 0.6, 0.4, 0.6
        // 4:39.2,
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:17.7, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:17.7 + 0.9, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:17.7 + 0.6, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:17.7 + 0.4, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:17.7 + 0.6, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:4, timeSecond:39.2, vibrate:true)

        // stomp!
        // 1:34.7,
        self.createTextTimer("Stomp!", timeMinute:1, timeSecond:34.7)

        // bam!
        // 1:16.2, 4:37.4,
        self.createTextTimer("Ka-Blam!", timeMinute:1, timeSecond:16.2, vibrate:true)
        self.createTextTimer("Bam!", timeMinute:4, timeSecond:37.4, vibrate:true)

        // chop!
        // 56.3, 1:45.0, 2:25.9, 2:39.4, 2:47.0, 2:53.0, 4:36.4, 4:36.7,
        self.createTextTimer("Karate Chop!", timeMinute:0, timeSecond:56.3, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:1, timeSecond:45.0, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:25.9, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:39.4, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:47.0, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:53.0, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:2, timeSecond:36.4, vibrate:true)
        self.createTextTimer("Karate Chop!", timeMinute:4, timeSecond:39.1, vibrate:true)   // last event

        // foinsap!
        // 2.27.5, 2:53.5, 3:10.5, 3:18.7, 3:33.3, 4:5.0,
        self.createTextTimer("Foinsap!", timeMinute:2, timeSecond:27.5)
        self.createTextTimer("Foinsap!", timeMinute:2, timeSecond:53.5)
        self.createTextTimer("Mega-Kick!", timeMinute:3, timeSecond:12.0, vibrate:true)
        self.createTextTimer("Giga-Kick!", timeMinute:3, timeSecond:19.5)
        self.createTextTimer("Terra-Kick!", timeMinute:3, timeSecond:33.9, vibrate:true)
        self.createTextTimer("Ka-POWwww!", timeMinute:4, timeSecond:5.1)

        // bop!
        // 3:49.3, 3:49.6, 3:50.5, 3:51.3, 3:53.5, 4:16.4, 4:18.1,
        self.createTextTimer("BOP!", timeMinute:3, timeSecond:50.3)
        self.createTextTimer("BOP!", timeMinute:3, timeSecond:50.6)
        self.createTextTimer("BOP!", timeMinute:3, timeSecond:51.5)
        self.createTextTimer("BOP!", timeMinute:3, timeSecond:52.3)
        self.createTextTimer("BOP!", timeMinute:3, timeSecond:54.5)
        self.createTextTimer("BOP!", timeMinute:4, timeSecond:17.4)
        self.createTextTimer("BOP!", timeMinute:4, timeSecond:19.1)

        // fwap!
        // 3:57.9, 4:10.1, 4:13.4,
        self.createTextTimer("Fwap!", timeMinute:3, timeSecond:57.9)
        self.createTextTimer("Fwap!", timeMinute:4, timeSecond:11.1)
        self.createTextTimer("Fwap!", timeMinute:4, timeSecond:14.4)

        // ouch!
        // 1:6.9
        self.createTextTimer("MMMpph!!", timeMinute:1, timeSecond:6.9)

        // clap
        // 40.0
        self.createTextTimer("Clap", timeMinute:0, timeSecond:40)

        // point!
        // 42.3, 42.9,
        self.createTextTimer("Point", timeMinute:0, timeSecond:42.3)
        self.createTextTimer("Point", timeMinute:0, timeSecond:42.9)
        self.createTextTimer("Point", timeMinute:0, timeSecond:43.5)
        self.createTextTimer("Point", timeMinute:0, timeSecond:43.9)

        // flip!
        // 44.7, 1:42.7,
        self.createTextTimer("Flip!", timeMinute:0, timeSecond:44.7)
        self.createTextTimer("Flip!", timeMinute:1, timeSecond:42.7)

        // rock paper scissors!
        // 1:58.4
        self.createTextTimer("Rock, Paper, Scissors!", timeMinute:1, timeSecond:58.4)

        
        if let theMoviePath = Bundle.main.url(forResource:"IndiaFightScene", withExtension:".mp4") {
            let movieNode = SKVideoNode.init(url:theMoviePath)
            self.addChild(movieNode)
            movieNode.play()
        }
     }
    
    // creates a timer that creates a text node at the specified time
    func createTextTimer(_ string:String, timeMinute:Int, timeSecond:Double, vibrate:Bool = false)
    {
        let timeToFire = (Double(timeMinute) * 60) + timeSecond

        let timer = Timer.scheduledTimer(withTimeInterval:timeToFire, repeats:false, block: { _ in
            self.createTextLabel(text:string, addParticleEffect:vibrate)
            
            if vibrate {
                AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
            }
        })
        arrTimers.append(timer)
    }
    
    // bong, chop, tap, step, slap, step, stop, blink, headbutt!, rock paper scissors!, fap, punch, bop!, poof!, chop!, chop!, chop!, double-chop!
    func createTextLabel(text:String, addParticleEffect:Bool = false)
    {
        let newLabel = GregLabelNode.init(text:text)
        self.addChild(newLabel);
        newLabel.fontSize = 34.0 + CGFloat(arc4random_uniform(24))
        newLabel.fontName = "AmericanTypewriter-Bold"
        newLabel.fontColor = UIColor.init(red: CGFloat(arc4random_uniform(256)) / 256.0,
                                          green:CGFloat(arc4random_uniform(256)) / 256.0,
                                          blue:CGFloat(arc4random_uniform(256)) / 256.0,
                                          alpha:1.0)
        newLabel.position = CGPoint.init(x:0.0, y:0.0)
        newLabel.direction = CGPoint.init(x:1.0, y:1.0)

        if text == "BOP!" || text == "Pirouette" || text == "Spin" {
            newLabel.doRotate = true
        }
        
        let r = 20 + arc4random_uniform(UInt32(20))
        var fX = CGFloat(r) / 10.0
        var fY = CGFloat(r) / 10.0
        if arc4random_uniform(2) == 0 {
            fX = 0 - fX
        }
        if arc4random_uniform(2) == 0 {
            fY = 0 - fY
        }
        newLabel.direction = CGPoint.init(x:fX, y:fY)

        if addParticleEffect == true {
            if let emitter = SKEmitterNode.init(fileNamed:"MyParticleSparkYellow") {
                newLabel.addChild(emitter)
            }
        }
    }
        
    override func update(_ currentTime: TimeInterval)
    {
        // Called before each frame is rendered
        for child in self.children
        {
            if let c = child as? GregLabelNode {
                c.position.x += c.direction.x
                c.position.y += c.direction.y
                
                c.alpha = c.alpha - 0.01
                c.xScale = c.xScale + 0.01
                c.yScale = c.yScale + 0.01

                if c.doRotate {
                    c.zRotation = c.zRotation + 0.1
                }
                
                if c.alpha <= 0 {
                    c.removeFromParent()
                }
            }
        }
    }
}
