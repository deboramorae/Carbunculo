//
//  PlatformComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//
import Foundation
import GameplayKit

class PlatformComponent : GKComponent{
    
    var platform : PlatformNode!
    
    init(scene: SKScene) {
        super.init()
        self.platform = PlatformNode(scene: scene)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

