//
//  MinionNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 04/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MinionNode: SKSpriteNode{
    init() {
        super.init(texture: SKTexture.imageNamed.minion, color: .clear, size: CGSize.sizeNode.minionNode)
        self.name = "minion"
        self.position = CGPoint.initialPositionNode.minionNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
