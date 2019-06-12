//
//  InvisibleMecanicNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 12/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation

import GameplayKit

class InvisibleMecanicNode: SKSpriteNode{
    init(scene: SKScene) {
        
        super.init(texture: nil, color: .clear, size: CGSize.sizeNode.sizeInvisibleNode)
        self.name = "invisibleMecanics"
        self.position = CGPoint.initialPositionNode.invisbleTapNode
        self.zPosition = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
