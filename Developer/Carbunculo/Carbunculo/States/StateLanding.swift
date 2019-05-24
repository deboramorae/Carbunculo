//
//  StateLanding.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class StateLanding:GKState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return (stateClass is StateIdle.Type) 
    }
    override func didEnter(from previousState: GKState?) {
        print("Landing Entrou")
    }
}
