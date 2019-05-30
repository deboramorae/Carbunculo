//
//  ChoicesNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 24/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ChoicesHUDNode : SKSpriteNode {
    
    init() {
        super.init(texture: nil, color: .orange, size: CGSize.sizeNode.choiseHUDNode)
        self.name = "Choices HUD"
        self.position = CGPoint.initialPositionNode.choiseHUDNode
        self.zPosition = 100
        
        let choiseButton1 = ChoiceButtonNode(backgroundNamed: "botaoPause") {
            print("Botão 1 pressionado")
            self.removeChoicesHUD()
        }
        choiseButton1.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: -30))
        self.addChild(choiseButton1)
        
        let choiseButton2 = ChoiceButtonNode(backgroundNamed: "botaoPause") {
            print("Botão 2 pressionado")
            self.removeChoicesHUD()
        }
        choiseButton2.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: -95))
        self.addChild(choiseButton2)
        
    }
    
    private func removeChoicesHUD() {
        self.removeFromParent()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
