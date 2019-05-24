//
//  ChoicesNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 24/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ChoicesNode : SKSpriteNode{
    init() {
        
        super.init(texture: nil, color: .orange, size: CGSize(width: 200, height: 200))
        self.name = "Choices"
        self.position = CGPoint(x: 200, y: 200)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
