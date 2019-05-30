//
//  BackgroundNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class BackgroundNode: SKSpriteNode {
    
    init() {
        super.init(texture: SKTexture.imageNamed.background1, color: .clear, size: CGSize.sizeNode.backgroundNode)
        self.name = "backgroundNode"
        self.position = CGPoint.initialPositionNode.backgroundNode
        self.zPosition = -1
        self.anchorPoint = CGPoint.anchorPointNode.backgroundNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
