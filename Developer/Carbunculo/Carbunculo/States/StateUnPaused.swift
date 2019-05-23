//
//  StateUnPaused.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class StateUnpaused:GKState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return (stateClass is StatePaused.Type)
    }
    override func didEnter(from previousState: GKState?) {
        let maquina = self.stateMachine as! MachineScene
        let cena    = maquina.scene
        cena?.UnpauseScene()
       // cena?.entityManager.changeUnPaused()
    }
}
