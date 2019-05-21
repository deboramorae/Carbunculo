//
//  StatePaused.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class StatePaused:GKState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return (stateClass is StateUnpaused.Type)
    }
}
