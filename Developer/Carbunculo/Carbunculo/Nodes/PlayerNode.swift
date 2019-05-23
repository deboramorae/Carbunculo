//
//  PlayerNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit


class PlayerNode: SKSpriteNode {
    init() {
        super.init(texture: nil, color: .blue, size: CGSize(width: 50, height: 50))
        self.name = "Player"
        self.initialPosition()
    }

    private func initialPosition(){
        self.position = CGPoint(x: -300, y: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
