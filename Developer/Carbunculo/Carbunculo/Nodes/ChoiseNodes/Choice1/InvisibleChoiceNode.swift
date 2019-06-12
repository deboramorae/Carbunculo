//
//  InvisibleChoiceNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class InvisibleChoiceNode: SKSpriteNode {
    
    init() {
        super.init(texture: nil, color: .clear, size: CGSize.sizeNode.invisibleChoiceNode)
        self.name = "InvisibleChoiceNode"
        self.position = CGPoint.initialPositionNode.invisbleTapNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
