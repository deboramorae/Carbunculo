//
//  ButtonSkipNode.swift
//  Carbunculo
//
//  Created by Débora Moraes on 25/07/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit

class ButtonSkipNode : SKNode{
    
    var textureNode : SKSpriteNode
    var action : () -> Void
    
    init(texture : SKTexture, action : @escaping() -> Void = {}) {
        self.action = action
        
        self.textureNode = SKSpriteNode.init(texture: texture, color: .black, size: CGSize(width: 50, height: 44))
        
        super.init()
        
        //self.textureNode = SKSpriteNode.init(texture: texture, color: .black, size: CGSize(width: 80, height: 20))
        self.isUserInteractionEnabled = true
        self.addChild(self.textureNode)
        self.textureNode.zPosition = 101
        //super.init(texture: nil, color: .black, size: CGSize(width: 80, height: 20))
        self.name = "ButtonSkip"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.action()
    }
}
