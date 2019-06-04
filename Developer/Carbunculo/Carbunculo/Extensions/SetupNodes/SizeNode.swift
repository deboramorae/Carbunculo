//
//  SizeNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 23/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import CoreGraphics


extension CGSize {
    public struct sizeNode {
        
        public static let platformNode : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 252, height: 44))
        public static let platform2    : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 454, height: 51))
        public static let platform3 : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 758, height: 47))
        public static let platform4 : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 252, height: 44))
        
        
        public static let floorNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 955, height: 43))
        public static let floor2 : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 1005, height: 54))
        public static let floor3: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 1085, height: 61))
         public static let floor4: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 755, height: 48))
        public static let floor5: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 741, height: 51))
        
        public static let woodNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 136, height: 43))
        public static let woodNode2 : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 114, height: 73))
        public static let woodNode3 : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 136, height: 43))
        
        
        public static let backgroundNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 1480, height: 375))
        
        public static let playerNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 55, height: 125))
        
        
         public static let waterNode   : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 405, height: 23))
        public static let waterNode2   : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 767, height: 23))
        public static let waterNode3   : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 1500, height: 23))
        
        
        public static let quicksandNode : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 476, height: 33))
        
        public static let stonesNode : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 79, height: 45))
        
        //pegar o tamanho real desses depois depois
        
        public static let windNode    : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 285, height: 156))
       
        public static let balaoNode    :  CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 47, height: 48))
        
        public static let choiseHUDNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 406, height: 208))
        
        public static let choiseButtonNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 319, height: 36))
        
        public static let invisibleChoiceNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 30, height: (SKViewSizeRect.height)))
        
        public static let frutinhaNode : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 40, height: 40))
        
        public static let animalNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 183, height: 65))
        public static let animalNode2: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 176, height: 91))
        
        //size physics body tronco
        
        public static let wood2PhysicsBody :  CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 61, height: 60))
        
        
        
    }
    
    public static func sizeProportinalWithFrame( size: CGSize ) -> CGSize {
        
        let newSize: CGSize = CGSize(width: (size.width * SKViewSizeRect.width) / 667, height: (size.height * SKViewSizeRect.height) / 375 )
        
        return newSize
    }
}
