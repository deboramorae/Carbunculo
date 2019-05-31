//
//  JumpingComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class JumpingComponent:GKComponent{
    weak var player:PlayerNode!
    
    init(player:PlayerNode){
        self.player = player
        super.init()
    }
    
    func jump(){
        if !EntityManager.ischoosing{
            if let component = entity!.component(ofType: PlayerStateMachineComponent.self) {
                if component.maquina.enter(StateJumping.self){
                    player.physicsBody?.affectedByGravity = true
                    player.physicsBody?.isDynamic = true
                    
                    player.physicsBody?.applyImpulse(proportionalForceFrame(force: CGVector(dx: 0, dy: CGSize.sizeNode.playerNode.height * 1.3)))
                }
            }
        }
        
    }
    
    private func proportionalForceFrame( force: CGVector ) -> CGVector {
        
        let newForce = CGVector(dx: (force.dx * SKViewSizeRect.width) / 667, dy: (force.dy * SKViewSizeRect.height) / 375)
        
        return newForce
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
