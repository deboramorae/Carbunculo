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
        player.physicsBody?.applyForce(CGVector(dx: 60, dy: 0))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
