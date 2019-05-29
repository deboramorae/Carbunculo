//
//  BalaoExclamacaoNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 28/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class BalaoExclamacaoNode : SKSpriteNode{
    
    init(){
        super.init(texture: nil, color: .blue, size: CGSize.sizeNode.balaoNode)
        self.name = "balaoExclamacao"
        self.position = CGPoint.initialPositionNode.balaoNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
