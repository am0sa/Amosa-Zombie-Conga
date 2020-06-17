//
//  MainMenuScene.swift
//  Zombie Conga
//
//  Created by Amosa Osayande on 2020-06-11.
//  Copyright © 2020 Amosa Osayande. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    var started = false
    
    init(size: CGSize, started: Bool){
        self.started = started
        super.init(size: size)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        var background: SKSpriteNode
        background = SKSpriteNode(imageNamed: "MainMenu")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        self.addChild(background)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else{
            return
        }
        sceneTapped()
    }
    
    func sceneTapped(){
        let wait = SKAction.wait(forDuration: 0.4)
        let startGame = SKAction.run {
            let myScene = GameScene(size: self.size)
            myScene.scaleMode = self.scaleMode
            let reveal = SKTransition.doorway(withDuration: 1.5)
            self.view?.presentScene(myScene, transition: reveal)}
        
        self.run(SKAction.sequence([wait, startGame]))
    }
}

