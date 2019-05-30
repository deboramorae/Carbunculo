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
        //Em relacao ao eixo Y, está ok
        //Em relacao ao eixo X, está tendo uma diferenca de pixels, verificar

        public static let backgroundNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: (-SKViewSizeRect.width/2), y: 0))

        public static let background2 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -SKViewSizeRect.width/2 + 1480 , y: 0))
        
        public static let background3 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -SKViewSizeRect.width/2 + (1480 * 2), y: 0))
        
        public static let floorNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -90, y: -334/2 ))
        
        public static let playerNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: (-SKViewSizeRect.width / 2), y: 220))

        public static let woodNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 50, y: (-301.47/2.22) ))
        
        public static let waterNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 533, y: -352/2))
        public static let water2: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 3450, y: -352/2))
        
        public static let quicksandNode : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2004, y: -352/2))
        
        public static let platformNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 530, y: -90))
        
        public static let platform2: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2004, y: -80))
        
        public static let platform3: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 3494, y: -80))
        
        public static let floorNode2  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1120, y: -334/2))
        
        public static let floorNode3  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2731, y: -334/2))
        
        public static let frutinhaNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 550, y: 0))
//
//        public static let woodNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 50, y: -(SKViewSizeRect.height/2) + (CGSize.sizeNode.woodNode.height)))

        public static let windNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 500, y: 10))

        public static let animalNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1800, y: -300/2))

        
        public static let balaoNode     : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 500, y: -10))
        
        public static let choiseHUDNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: 0))
        
        public static let stoneNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2725, y: (-301.47/2)))
    }
    
    public static func positionProportionalWithFrame( position: CGPoint ) -> CGPoint {

        let newPosition: CGPoint = CGPoint(x: (position.x * SKViewSizeRect.width) / 667, y: (position.y * SKViewSizeRect.height) / 375)
        
        return newPosition
    }
    
}
