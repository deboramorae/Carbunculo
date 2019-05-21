//
//  ComponentsWithNodes.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit

protocol ComponentsWithNodes {
    var nodesToAddToScene: [SKNode] { get }
    var nodesToAssociateWithComponent: [SKNode] { get }
}
