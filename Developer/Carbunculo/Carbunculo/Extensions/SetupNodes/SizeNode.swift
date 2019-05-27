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
        
        public static let backgroundNode: CGSize = CGSize(width: 1480, height: 375)
        public static let playerNode: CGSize = CGSize(width: 55, height: 125)
        public static let floorNode: CGSize = CGSize(width: 955, height: 43)
        public static let woodNode: CGSize = CGSize(width: 136, height: 43)
//        public static let waterNode: CGSize = CGSize(width: 405, height: 23)
        public static let platformNode : CGSize = CGSize(width: 252, height: 44)
        
        //pegar o tamanho do vento/agua real depois
        
        public static let windNode    : CGSize  = CGSize(width: 200, height: 50)
        public static let waterNode   : CGSize  = CGSize(width: 134, height: 46)
        
        public static let animalNode  : CGSize  = CGSize(width: 125, height: 55)
        
    }
}
