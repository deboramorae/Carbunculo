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
    
    init(backgroundNamed: String, action: @escaping  () -> Void = {}) {

        self.backgroundNode = SKSpriteNode(imageNamed: backgroundNamed)
        self.action = action
        
        super.init()
        
        self.name = "ChoiceButtonNode"
        let texture = SKTexture.init(imageNamed: backgroundNamed)
        
        self.backgroundNode = SKSpriteNode.init(texture:texture , size: CGSize.sizeNode.choiseButtonNode)
        
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
