//
//  GameCutscene.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class GameCutscene: SKScene {

    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    var entityManager: EntityManager!

    
    override func sceneDidLoad() {
        entityManager = EntityManager(scene: self)

        do {
            let cutscene01 = CutsceneEntity(entityManager: entityManager, scene: self, nameFile: "BeginningCutscene")
        
            entityManager.add(cutscene01)
        }


    }
}
