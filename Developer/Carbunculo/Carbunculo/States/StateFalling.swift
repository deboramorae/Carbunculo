//
//  StateFalling.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class StateFalling:GKState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return (stateClass is StateLanding.Type) || (stateClass is StateUnconscious.Type) || (stateClass is StateIdle.Type) || (stateClass is StateRunning.Type)
    }
    override func didEnter(from previousState: GKState?) {
        print("Entrou Falling")
    }
}
