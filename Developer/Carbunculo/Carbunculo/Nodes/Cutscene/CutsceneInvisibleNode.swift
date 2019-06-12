//
//  CutsceneInvisibleNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class CutsceneInvisibleNode: SKSpriteNode {
    
    init() {
        super.init(texture: nil, color: .clear, size: CGSize.sizeNode.invisibleChoiceNode)
        self.name = "InvisibleCutsceneNode"
        self.position = CGPoint(x: CGPoint.initialPositionNode.carbunculoNode.x - 200, y: CGPoint.initialPositionNode.carbunculoNode.y)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
