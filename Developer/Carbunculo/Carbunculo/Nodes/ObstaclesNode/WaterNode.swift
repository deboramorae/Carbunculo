//
//  WaterNode.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class WaterNode : SKSpriteNode{
    init(){
        super.init(texture: nil, color: .blue, size: CGSize.sizeNode.waterNode)
        self.name = "water"
        self.position = CGPoint.initialPositionNode.waterNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
