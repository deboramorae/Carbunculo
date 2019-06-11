//
//  MecanicsSwipeNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 11/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MecanicsSwipeNode : SKSpriteNode{
    
    init(){
        super.init(texture: SKTexture.imageNamed.setaNode, color: .clear, size: CGSize.sizeNode.setaNode)
        self.name = "mecanicsSwipe"
        self.position = CGPoint.initialPositionNode.setaNode
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
