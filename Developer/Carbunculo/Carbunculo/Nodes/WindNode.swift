//
//  WindNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class WindNode: SKSpriteNode{
    init(){
        super.init(texture: SKTexture.imageNamed.windNode, color: .white, size: CGSize.sizeNode.windNode)
        self.name = "Wind"
        self.position = CGPoint.initialPositionNode.windNode
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
