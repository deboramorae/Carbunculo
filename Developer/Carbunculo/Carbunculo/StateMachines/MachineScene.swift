//
//  MachineScene.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameKit

class MachineScene:GKStateMachine{
    weak var scene:GameScene!
    init(states: [GKState],scene:GameScene) {
        self.scene = scene
        super.init(states: states)
    }
}
