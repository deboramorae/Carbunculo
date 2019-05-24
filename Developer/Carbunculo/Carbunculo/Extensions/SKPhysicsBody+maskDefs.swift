//
//  SKPhysicsBody+maskDefs.swift
//  Carbunculo
//
//  Created by Débora Moraes on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit

extension SKPhysicsBody{
    public struct CategoryBitMask {
        // move 0 bits para a esquerda
        public static let player         : UInt32 = 1 << 0
        public static let floorComponent : UInt32 = 1 << 1
        public static let scenario       : UInt32 = 1 << 2
        public static let choices        : UInt32 = 1 << 3
    }
}

