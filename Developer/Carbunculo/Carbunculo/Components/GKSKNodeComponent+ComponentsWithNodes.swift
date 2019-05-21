//
//  GKSKNodeComponent+ComponentsWithNodes.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


extension GKSKNodeComponent: ComponentsWithNodes {
    // MARK: - ComponentWithNodes
    
    var nodesToAddToScene: [SKNode] {
        return [node]
    }
    
    var nodesToAssociateWithComponent: [SKNode] {
        return [node]
    }
}
