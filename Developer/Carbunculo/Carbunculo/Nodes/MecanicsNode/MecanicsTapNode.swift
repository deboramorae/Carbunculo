//
//  MecanicsTapNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 11/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class MecanicsTapNode: SKSpriteNode{
    
    init(){
        super.init(texture: SKTexture.imageNamed.tapNode, color: .clear, size: CGSize.sizeNode.tapNode)
        self.name = "invisibleMecanics"
        self.position = CGPoint.initialPositionNode.tapNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
