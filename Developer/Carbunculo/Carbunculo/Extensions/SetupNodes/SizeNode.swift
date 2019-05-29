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
        
        public static let backgroundNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 1480, height: 375))
        public static let playerNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 55, height: 125))
        public static let floorNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 955, height: 43))
        public static let woodNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 136, height: 43))
        public static let platformNode : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 252, height: 44))

        
        //pegar o tamanho do vento/agua real depois

        public static let windNode    : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 200, height: 50))
        public static let waterNode   : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 134, height: 46))
        public static let animalNode  : CGSize  = CGSize.sizeProportinalWithFrame(size: CGSize(width: 125, height: 55))
        public static let quicksandNode : CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 223, height: 45))
        public static let balaoNode    :  CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 100, height: 100))
        public static let choiseNode: CGSize = CGSize.sizeProportinalWithFrame(size: CGSize(width: 200, height: 200))

    }
    
    public static func sizeProportinalWithFrame( size: CGSize ) -> CGSize {
        
        let newSize: CGSize = CGSize(width: (size.width * SKViewSizeRect.width) / 667, height: (size.height * SKViewSizeRect.height) / 375 )
        
        return newSize
    }
}
