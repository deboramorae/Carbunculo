//
//  CutsceneNodeComponent.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class CutsceneNodeComponent: GKComponent {
    init(node: SKVideoNode, scene: GameScene) {
        super.init()
        scene.addChild(node)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
