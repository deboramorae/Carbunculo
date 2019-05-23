//
//  PhysicsBodyComponent.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit


struct PhysicsBodyDimensions {
    let horizontalShiftSpritePixels: CGFloat
    let sizeSpritePixels: CGSize
    let verticalShiftSpritePixels: CGFloat
    
    init(sizeSpritePixels: CGSize, verticalShiftSpritePixels: CGFloat = 0, horizontalShiftSpritePixels: CGFloat = 0) {
        self.horizontalShiftSpritePixels = horizontalShiftSpritePixels
        self.sizeSpritePixels = sizeSpritePixels
        self.verticalShiftSpritePixels = verticalShiftSpritePixels
    }
    
    func anchorPoint(for node: SKSpriteNode) -> CGPoint {
        return CGPoint(x: 0.5 - horizontalShiftSpritePixels * GameScene.spritePixelsToScreenPixels / node.frame.width, y: verticalShiftSpritePixels * GameScene.spritePixelsToScreenPixels / node.frame.height)
    }
    
    static prefix func - (op: PhysicsBodyDimensions) -> PhysicsBodyDimensions {
        return PhysicsBodyDimensions(sizeSpritePixels: op.sizeSpritePixels, verticalShiftSpritePixels: op.verticalShiftSpritePixels, horizontalShiftSpritePixels: -op.horizontalShiftSpritePixels)
    }
}

extension PhysicsBodyDimensions {
    static let player = PhysicsBodyDimensions(sizeSpritePixels: CGSize.sizeNode.playerNode, verticalShiftSpritePixels: CGFloat(0), horizontalShiftSpritePixels: CGFloat(0))    
}

class PhysicsBodyComponent: GKComponent {
    let sizeScreenPixels: CGSize
    let verticalShiftScreenPixels: CGFloat
    
    init(node: SKSpriteNode, dimensions: PhysicsBodyDimensions) {
        self.sizeScreenPixels = dimensions.sizeSpritePixels * GameScene.spritePixelsToScreenPixels
        self.verticalShiftScreenPixels = dimensions.verticalShiftSpritePixels * GameScene.spritePixelsToScreenPixels
        
        super.init()
        
        node.anchorPoint = dimensions.anchorPoint(for: node)
        node.physicsBody = SKPhysicsBody(rectangleOf: sizeScreenPixels, center: CGPoint(x: 0, y: sizeScreenPixels.height / 2))
        
        node.physicsBody?.isDynamic          = true
        node.physicsBody?.affectedByGravity  = false
        node.physicsBody?.allowsRotation     = false
        node.physicsBody?.linearDamping      = 0.0
        node.physicsBody?.angularDamping     = 0.0
        node.physicsBody?.friction           = 0.0
        node.physicsBody?.restitution        = 0.0
        
        node.physicsBody?.categoryBitMask    = SKPhysicsBody.CategoryBitMask.floorComponent
        node.physicsBody?.collisionBitMask   = 0
        node.physicsBody?.contactTestBitMask = 0
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
