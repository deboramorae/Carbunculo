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
        super.init(texture: SKTexture.imageNamed.water, color: .blue, size: CGSize.sizeNode.waterNode)
        
        self.name = "water"
        self.position = CGPoint.initialPositionNode.waterNode
        self.zPosition = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
