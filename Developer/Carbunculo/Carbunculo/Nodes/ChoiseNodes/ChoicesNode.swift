//
//  ChoicesNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 24/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ChoicesNode : SKSpriteNode{
    init() {
        
        super.init(texture: nil, color: .orange, size: CGSize.sizeNode.choiseNode)
        self.name = "Choices"
        self.position = CGPoint.initialPositionNode.choiseNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
