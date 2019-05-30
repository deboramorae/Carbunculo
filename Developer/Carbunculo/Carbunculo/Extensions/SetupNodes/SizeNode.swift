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
        public static let platform2    : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 758, height: 47))
        
        public static let platform3 : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 758, height: 47))
        
        
        public static let backgroundNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 1480, height: 375))
        
        public static let playerNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 55, height: 125))
        
        public static let floorNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 955, height: 43))
        
        public static let floor2 : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 1005, height: 54))
        
        public static let floor3: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 767, height: 43))
        public static let woodNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 136, height: 43))
        
         public static let waterNode   : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 405, height: 23))
        public static let waterNode2   : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 767, height: 23))
        
        public static let quicksandNode : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 882, height: 28))
        
        public static let stonesNode : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 79, height: 45))
        
        //pegar o tamanho real desses depois depois
        
        public static let windNode    : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 200, height: 50))
       
        public static let balaoNode    :  CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 100, height: 100))
        public static let choiseHUDNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 530, height: 300))
        
        public static let choiseButtonNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 350, height: 50))
        
        public static let invisibleChoiceNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 30, height: (SKViewSizeRect.height)))
        
        public static let frutinhaNode : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 40, height: 40))
        
        public static let animalNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 183, height: 65))
        
    }
    
    public static func sizeProportinalWithFrame( size: CGSize ) -> CGSize {
        
        let newSize: CGSize = CGSize(width: (size.width * SKViewSizeRect.width) / 667, height: (size.height * SKViewSizeRect.height) / 375 )
        
        return newSize
    }
}
