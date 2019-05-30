//
//  AnimalNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class AnimalNode : SKSpriteNode {
    
    init(){
        super.init(texture: SKTexture.imageNamed.animal, color: .purple, size: CGSize.sizeNode.animalNode)
        self.name = "animal"
        self.position = CGPoint.initialPositionNode.animalNode
        self.zPosition = 3
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
