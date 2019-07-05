//
//  Player.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class Player: GKEntity {
    
    init(entityManager: EntityManager) {
        super.init()
        
        let player  = PlayerNode()
        player.name = "player"
        
        addComponent(GKSKNodeComponent(node: player))
        addComponent(PlayerNodeComponent(node: player))
        addComponent(PhysicsBodyComponent(node: player, dimensions: PhysicsBodyDimensions.player))
        addComponent(JumpingComponent(player: player))
        addComponent(IdleComponent(player: player))
        addComponent(RunComponent(player: player))
        addComponent(PlayerStateMachineComponent(playerNode: player))
        
        do {
            player.physicsBody?.isDynamic = true
            player.physicsBody?.affectedByGravity = true
            player.physicsBody?.categoryBitMask |=  SKPhysicsBody.CategoryBitMask.player
            player.physicsBody?.collisionBitMask |= SKPhysicsBody.CategoryBitMask.floorComponent
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
