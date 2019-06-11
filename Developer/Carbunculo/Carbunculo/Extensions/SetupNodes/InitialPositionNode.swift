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
        
        public static let background4 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -SKViewSizeRect.width/2 + (1480 * 3), y: 0))
        
        public static let background5 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -SKViewSizeRect.width/2 + (1480 * 4), y: 0))
        
        public static let background6 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -SKViewSizeRect.width/2 + (1480 * 5), y: 0))
        
        public static let background7 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -SKViewSizeRect.width/2 + (1480 * 6), y: 0))
        
        
        public static let floorNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: -90, y: -334/2 ))
        
        public static let playerNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: (-SKViewSizeRect.width / 2), y: 220))

        public static let woodNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 50, y: (-301.47/2.22)))
        
        public static let woodNode2 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1160, y: -125))
        public static let woodNode3 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 4220, y:(-301.47/2.22 )))
        
        public static let waterNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 533, y: (-352/2)))
        
        public static let water2: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 3415, y: -352/2))
        
        public static let water3: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 5265, y: -352/2))
        
        
        public static let quicksandNode : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1804, y: -352/2))
        
        public static let platformNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 530, y: -90))
        
        public static let platform2: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1804, y: -40))
        
        public static let platform3: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 3398, y: -90))
        
        public static let platform4: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 4680, y: -95))
        
        public static let platform5: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 4985, y: -40))
        
        public static let platform6: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 5272, y: -95))
        
        public static let platform7: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 5547, y: -40))
        
        public static let platform8: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 5820, y: -95))
        
        public static let platform9: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6509, y: 20))
        
        
        
        public static let floorNode2  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1120, y: -334/2))
        
        public static let floorNode3  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2523, y: -334/2))
        
        public static let floorNode4  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 4150, y: -334/2))
        
        public static let floorNode5  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6463, y: -334/2))
        
        public static let floorMystic  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 7630, y: -268/2))
        
        public static let floorMysticInvisible  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 7630, y: -270/2))
        
        public static let floorMystic2  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 8906, y: -187/2))
        
        public static let floorMysticInvisible2  : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 8906, y: -189/2))
        
        
        public static let frutinhaNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 550, y: 0))
        
        public static let frutinha02: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1800, y: 60))
        
        public static let frutinha03: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 3400, y: 0))
        
        public static let frutinha04: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 4700, y: 0))
        
        public static let invisibleChoiceNode : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 0, y: 0))
        
        
        public static let choiseHUDNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1563, y: 20))
        
        public static let choiseHUDNode2: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6300, y: 0))
        
        public static let choiseHUDNode3: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 8100, y: 0))
        
        
        public static let windNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1390, y: 10))
        
        public static let windNode2: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6235, y: 0))

        public static let animalNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1750, y: -300/2))
        
        public static let animalNode2 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6500, y: -100))

        
        public static let balaoNode : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1859, y: -100))
        
        public static let balaoNode2 : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6620, y: -70))
        
        public static let stoneNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2725, y: (-272/2)))
        
        public static let playerFirstChoice_Save: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2100, y: 0))

        public static let playerFirstChoice_NoSave: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 1700, y: 0))
        
        public static let playerSecondChoice_NoSave : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6460, y: 20))
        
        public static let playerSecondChoice_Save : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6919.0, y: -159.87))
        
        public static let minionNode : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 8375, y: -160/2))
        
        public static let animalSave : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6500, y: -252/2))
        
         public static let macacoSave : CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2330, y: -222/2))
        
        public static let coracaoNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 6510, y: -70))
        
        public static let carbunculoNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 9500, y: -10))
        
         public static let coracaoMacacoNode: CGPoint =  CGPoint.positionProportionalWithFrame(position: CGPoint(x: 2330, y: -60))
        
        public static let setaNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 10, y: 0))
        
        public static let tapNode: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 10, y: 0))
        
        public static let posicaoInicialTerceiraEscolha: CGPoint = CGPoint.positionProportionalWithFrame(position: CGPoint(x: 8666.01, y: -105.46))
        
        
    }
    
    public static func positionProportionalWithFrame( position: CGPoint ) -> CGPoint {

        let newPosition: CGPoint = CGPoint(x: (position.x * SKViewSizeRect.width) / 667, y: (position.y * SKViewSizeRect.height) / 375)
        
        return newPosition
    }
    
}
