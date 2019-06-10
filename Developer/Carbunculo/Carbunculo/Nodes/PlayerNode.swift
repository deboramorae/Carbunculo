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
        super.init(texture: SKTexture.imageNamed.player, color: .blue, size: CGSize.sizeNode.playerNode)
        self.name = "Player"
        self.initialPosition()
        self.zPosition = 4
    }

    private func initialPosition(){
        //codigoparadefinirposicaobaseadonosave
        if(PlayerDAO.getSaves().count==0){
            self.position = CGPoint.initialPositionNode.playerNode
        }else{
            let save = PlayerDAO.getSaves()[0]
            print("Numero do checkpoint \(save.checkpoint)")
            switch(save.checkpoint){
                
            case 1:
                    if(save.escolhaUm==1){
                        self.position = CGPoint.initialPositionNode.playerFirstChoice_Save
                    }else{
                        self.position = CGPoint.initialPositionNode.playerFirstChoice_NoSave
                    }
                    break
            case 2:
                
                //JEFF AQUI, CORRIGE DUAS COISAS: 1  a POSICAO que esta voltando para a primeira escolha
                //DOIS, Criar um else que aponte para caso ele nao escolha salvar o piupiu
                    if(save.escolhaUm==1){
                        self.position = CGPoint.initialPositionNode.playerSecondChoice_NoSave
                    }
                    break
                default:
                print("Implemente o Default, com certeza deve ter dado erro né?")
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
