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
    
    init(cena: GameScene) {
        super.init(texture: SKTexture.imageNamed.decisao1, color: .clear, size: CGSize.sizeNode.choiseHUDNode)
        
        self.name = "Choices HUD"
        self.position = CGPoint.initialPositionNode.choiseHUDNode
        self.zPosition = 100
        
        let choiseButton1 = ChoiceButtonNode(backgroundNamed: "escolha1") {
            print("Botão 1 pressionado")
            self.removeChoicesHUD()
            self.addPoints(points: 2)
            EntityManager.ischoosing = false
            cena.entityManager.updatePositionPlayerInFirstChoice_Save()
        }
        
        choiseButton1.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: 0))
        self.addChild(choiseButton1)
        
        let choiseButton2 = ChoiceButtonNode(backgroundNamed: "escolha2") {
            print("Botão 2 pressionado")
            self.removeChoicesHUD()
            self.addPoints(points: 1)
            EntityManager.ischoosing = false
            cena.entityManager.updatePositionPlayerInFirstChoice_NoSave()
        }
        choiseButton2.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: -55))
        
        self.addChild(choiseButton2)
        
        self.isHidden = true
    }
    
    private func addPoints(points: Int) {
        choicesControl.ponctuation += points
    }

    private func removeChoicesHUD() {
        self.removeFromParent()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
