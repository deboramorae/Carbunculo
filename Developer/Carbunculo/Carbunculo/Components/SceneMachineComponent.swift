//
//  SceneMachineComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 23/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class SceneMachineComponent:GKComponent{
    var maquina:MachineScene!
    init(scene:GameScene){
        super.init()
        maquina = MachineScene(states: [StatePaused(),StateUnpaused()], scene: scene)
        maquina.enter(StateUnpaused.self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
