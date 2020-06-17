//
//  GameViewController.swift
//  Zombie Conga
//
//  Created by Amosa Osayande on 2020-06-08.
//  Copyright © 2020 Amosa Osayande. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = MainMenuScene(size: CGSize(width: 2048, height: 1536), started: false)
//        let scene = GameScene(size:CGSize(width: 2048, height: 1536))
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = false
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }


    override var prefersStatusBarHidden: Bool {
        return true
    }
}
