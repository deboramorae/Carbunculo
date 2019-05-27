//
//  InitialPositionNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 23/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import CoreGraphics
import SpriteKit


extension CGPoint {
    public struct initialPositionNode {

        public static let backgroundNode: CGPoint = CGPoint(x: (SKViewSizeRect.width/2), y: 0)
        public static let floorNode: CGPoint = CGPoint(x: 0, y: -SKViewSizeRect.height/2)
        public static let playerNode: CGPoint = CGPoint(x: (-SKViewSizeRect.width / 2) + 100, y: 0)
        
        public static let woodNode: CGPoint = CGPoint(x: 50, y: -(SKViewSizeRect.height/2) + (CGSize.sizeNode.woodNode.height) )
//        public static let waterNode: CGPoint = CGPoint(x: (-SKViewSizeRect.width / 2) + 100, y: 0)
        public static let platformNode: CGPoint = CGPoint(x: 280, y: 10)
        
    }
}
