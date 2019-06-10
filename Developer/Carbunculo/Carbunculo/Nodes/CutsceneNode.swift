//
//  CutsceneNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 10/06/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit


class CutsceneNode: SKVideoNode {
    init(nameFile: String) {
        super.init(fileNamed: nameFile)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
