//
//  IdleComponent.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class IdleComponent: GKComponent {
    
    weak var player: PlayerNode!
    
    init(player: PlayerNode) {
        super.init()
        self.player = player
    }
    
    func idle() {
        if EntityManager.ischoosing{
            if let component = entity!.component(ofType: PlayerStateMachineComponent.self) {
                if component.maquina.enter(StateIdle.self){
                    player.removeAllActions()
                    player.run(Animations.Player.idle)
                    player.physicsBody?.velocity.dx = 0.0
                    player.physicsBody?.isDynamic  = false
                    player.physicsBody?.isDynamic  = true
                    
                    if playerWalkSong.songIsPlaying() {
                        playerWalkSong.stopSong()
                        isPlayerWalk = false
                    }
                }
            }
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
