//
//  FloorComponent.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class FloorComponent: GKComponent {
    
    var floor: FloorNode!
    
    init(scene: SKScene) {
        super.init()
        self.floor = FloorNode(scene: scene)
        self.floor.name = "floor"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
