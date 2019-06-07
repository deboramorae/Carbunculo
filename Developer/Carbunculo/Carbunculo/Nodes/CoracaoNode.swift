//
//  CoracaoNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 06/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class CoracaoNode: SKSpriteNode{
    
    init(){
        super.init(texture: SKTexture.imageNamed.coracaoNode, color: .clear, size: CGSize.sizeNode.coracaoNode)
        self.name = "coracao"
        self.position = CGPoint.initialPositionNode.coracaoNode
        self.zPosition = 3
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
