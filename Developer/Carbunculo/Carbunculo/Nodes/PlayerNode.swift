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
        
        if(PlayerDAO.getSaves().count==0){
            self.position = CGPoint.initialPositionNode.playerNode
        }else{
            let save = PlayerDAO.getSaves()[0]
            switch(save.checkpoint){
                
            case 0:
                    if(save.escolhaUm==2){
                        self.position = CGPoint.initialPositionNode.playerFirstChoice_Save
                    }else{
                        self.position = CGPoint.initialPositionNode.playerFirstChoice_NoSave
                    }
                    break
                case 1:
                    if(save.escolhaUm==2){
                        self.position = CGPoint.initialPositionNode.playerFirstChoice_Save
                    }else{
                        self.position = CGPoint.initialPositionNode.playerFirstChoice_NoSave
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
