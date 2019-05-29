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
        
        super.init(texture: nil, color: .orange, size: CGSize.sizeNode.choiseNode)
        self.name = "Choices"
        self.position = CGPoint.initialPositionNode.choiseNode
        self.zPosition = 100
        
        let choiseButton1 = ChoiseButtonNode()
        choiseButton1.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: -30))
        self.addChild(choiseButton1)
        
        let choiseButton2 = ChoiseButtonNode()
        choiseButton2.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: -95))
        self.addChild(choiseButton2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
