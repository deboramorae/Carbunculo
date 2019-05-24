//
//  MachinePlayer.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameKit

class MachinePlayer:GKStateMachine{
    weak var node:PlayerNode!
    init(states: [GKState],player:PlayerNode) {
        node = player
        super.init(states: states)
    }
    override func update(deltaTime sec: TimeInterval) {
    }
}
