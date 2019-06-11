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
    var manager:EntityManager?
    
    init(textureDecisao: SKTexture, textureButton1: SKTexture, textureButton2: SKTexture, cena: GameScene, numberChoice: Int,manager:EntityManager) {
        super.init(texture: textureDecisao, color: .clear, size: CGSize.sizeNode.choiseHUDNode)
        
        self.manager = manager
        self.name = "Choices HUD"
        self.position = CGPoint.initialPositionNode.choiseHUDNode
        self.zPosition = 100
        let choiseButton1 = ChoiceButtonNode(backgroundNamed: textureButton1) {
            print("Botão 1 pressionado")
            self.removeChoicesHUD()
            self.addPoints(points: 1)
            EntityManager.ischoosing = false
            cena.entityManager.updatePositionPlayerInChoice_Save(numberChoice: numberChoice)
            self.atualizar(opcaoEscolhida: 1, numeroDoMomentoAtual: numberChoice)
        }
        
        choiseButton1.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: 0))
        self.addChild(choiseButton1)
        
        let choiseButton2 = ChoiceButtonNode(backgroundNamed: textureButton2) {
            print("Botão 2 pressionado")
            self.removeChoicesHUD()
            self.addPoints(points: 2)
            EntityManager.ischoosing = false
            cena.entityManager.updatePositionPlayerInChoice_NoSave(numberChoice: numberChoice)
            self.atualizar(opcaoEscolhida: 2, numeroDoMomentoAtual: numberChoice)
        }
        choiseButton2.position = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: -55))
        
        self.addChild(choiseButton2)
        
        self.isHidden = true
    }
    
    private func atualizar(opcaoEscolhida:Int,numeroDoMomentoAtual:Int){
      choicesControl.decisaoatual = numeroDoMomentoAtual
        switch(numeroDoMomentoAtual){
            case 1:
                choicesControl.escolhaum   = opcaoEscolhida
                manager!.saveProgress()
                break;
            case 2:
                choicesControl.escolhadois = opcaoEscolhida
                manager!.saveProgress2()
            default:
                choicesControl.escolhatres = opcaoEscolhida
                break;
        }
        choicesControl.mostrarInformacoes()
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
