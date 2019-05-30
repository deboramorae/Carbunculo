//
//  FruitinhaNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 30/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class FrutinhaNode: SKSpriteNode{
    
    init(){
        super.init(texture: SKTexture.imageNamed.frutinha, color: .yellow, size: CGSize.sizeNode.frutinhaNode)
        self.name = "frutinha"
        self.position = CGPoint.initialPositionNode.frutinhaNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
