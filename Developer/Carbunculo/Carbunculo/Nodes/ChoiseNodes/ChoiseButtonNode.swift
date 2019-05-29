//
//  ChoiseButtonNode.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


class ChoiseButtonNode: SKSpriteNode {
    init() {
        super.init(texture: nil, color: .blue, size: CGSize.sizeNode.choiseButtonNode)
        self.name = "Botao de escolha"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
