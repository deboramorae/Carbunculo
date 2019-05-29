//
//  QuicksandNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class QuicksandNode: SKSpriteNode{
    init(){
        super.init(texture: SKTexture(imageNamed: "areia_movedica"), color: .brown, size: CGSize.sizeNode.quicksandNode)
        self.name = "quicksand"
        self.position = CGPoint.initialPositionNode.quicksandNode
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
