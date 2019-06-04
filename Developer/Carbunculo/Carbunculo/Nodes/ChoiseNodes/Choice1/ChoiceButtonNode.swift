//
//  ChoiseButtonNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class ChoiceButtonNode: SKNode {
    
    var backgroundNode: SKSpriteNode
    var action: () -> Void
    
    init(backgroundNamed: SKTexture, action: @escaping  () -> Void = {}) {

        self.backgroundNode = SKSpriteNode(texture: backgroundNamed)
        self.action = action
        
        super.init()
        
        self.name = "ChoiceButtonNode"
        
        self.backgroundNode = SKSpriteNode.init(texture: backgroundNamed , size: CGSize.sizeNode.choiseButtonNode)
        
        self.isUserInteractionEnabled = true
        self.addChild(self.backgroundNode)
        self.backgroundNode.zPosition = 3
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.action()
    }
}
