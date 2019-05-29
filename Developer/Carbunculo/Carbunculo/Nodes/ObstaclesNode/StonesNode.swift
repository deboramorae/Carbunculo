//
//  StonesNOde.swift
//  Carbunculo
//
//  Created by Débora Moraes on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class StonesNode: SKSpriteNode{
    
    init(){
        super.init(texture: SKTexture(imageNamed: "pedrinhas1"), color: .gray, size: CGSize.sizeNode.stonesNode)
        self.name = "stone"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
