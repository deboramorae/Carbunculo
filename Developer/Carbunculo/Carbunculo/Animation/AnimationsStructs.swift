//
//  struct Animations.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit

struct Animations{
    struct Jump{
        static var run:SKAction{
            get{
                return SKAction.animate(with: Textures.playerRun, timePerFrame: 5)
            }
        }
        static var fall:SKAction{
            get{
                return SKAction.animate(with: Textures.playerFall, timePerFrame: 5)
            }
        }
        static var jump:SKAction{
            get{
                return SKAction.animate(with: Textures.playerJump, timePerFrame: 5)
            }
        }
        static var idle:SKAction{
            get{
                return SKAction.animate(with: Textures.playerIdle, timePerFrame: 5)
            }
        }
    }
    struct Maracuja{
        static var loop:SKAction{
            get{
                let frequencia       = 2
                let animationDesce   = SKAction.moveBy(x: 0, y: -10, duration: TimeInterval(1/frequencia))
                let animationSobe    = SKAction.moveBy(x: 0, y: 10, duration: TimeInterval(1/frequencia))
                let sequencia        = SKAction.sequence([animationDesce,animationSobe])
                let repeticaoForever = SKAction.repeatForever(sequencia)
                return repeticaoForever
            }
        }
    }
}
