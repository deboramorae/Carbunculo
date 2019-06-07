//
//  CarbunculoNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class CarbunculoNode: SKSpriteNode{
    init(){
        super.init(texture: SKTexture.imageNamed.carbunculo, color: .clear, size: CGSize.sizeNode.carbunculoNode)
        
        self.name = "carbunculo"
        self.position = CGPoint.initialPositionNode.carbunculoNode
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
