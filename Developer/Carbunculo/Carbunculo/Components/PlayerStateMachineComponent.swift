//
//  PlayerStateMachineComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 23/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class PlayerStateMachineComponent:GKComponent{
    var maquina:MachinePlayer!
    init(playerNode:PlayerNode){
        super.init()
        maquina = MachinePlayer(states: [StateIdle(),StateRunning(),StateJumping(),StateFalling(),StateLanding(),StateUnconscious(),], player: playerNode)
        maquina.enter(StateIdle.self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func enterStateIdle(){
        maquina.enter(StateIdle.self)
    }
    func enterStateRunning(){
        maquina.enter(StateRunning.self)
    }
    func enterStateJumping(){
        maquina.enter(StateJumping.self)
    }
    func enterStateFalling(){
        maquina.enter(StateFalling.self)
    }
    func enterStateLanding(){
        maquina.enter(StateLanding.self)
    }
    func enterStateUnconscious(){
        maquina.enter(StateUnconscious.self)
    }
}
