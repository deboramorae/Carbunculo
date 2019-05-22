//
//  FloorNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit


class FloorNode: SKSpriteNode {
    
    init(scene: SKScene) {
        super.init(texture: nil, color: .green, size: CGSize(width: scene.frame.width, height: 50))
        self.name = "Floor"
        self.position = CGPoint(x: 0, y: -scene.frame.height/2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
