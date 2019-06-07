//
//  RunComponent.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class RunComponent: GKComponent {
    
    weak var player: PlayerNode!
    
    init(player: PlayerNode) {
        super.init()
        self.player = player
    }
    
    func run() {
        
        if !EntityManager.ischoosing{
            if let component = entity!.component(ofType: PlayerStateMachineComponent.self) {
                
                if(component.maquina.currentState.self is StateJumping || component.maquina.currentState.self is StateFalling){
                    player.physicsBody?.velocity.dx = 0
                    // player.physicsBody?.applyForce(proportionalForceFrame(force: CGVector(dx: 1000, dy: 0)))
                    player.physicsBody?.velocity.dx = 100
                }
                else{
                    if component.maquina.enter(StateRunning.self){

                        if playerWalkSong.songIsPlaying() {
                            playerWalkSong.stopSong()
                            isPlayerWalk = false
                        }

                        playerWalkSong.prepareMusic()
                        playerWalkSong.enterInLooping()
                        playerWalkSong.playSong()
                        isPlayerWalk = true
                        
                        player.removeAllActions()
                        player.run(Animations.Player.run)
                        player.physicsBody?.velocity.dx = 0
                        // player.physicsBody?.applyForce(proportionalForceFrame(force: CGVector(dx: 1000, dy: 0)))
                        player.physicsBody?.velocity.dx = 100
                        
                    }
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
