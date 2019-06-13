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
    struct Player{
        static var run:SKAction{
            get{
                return SKAction.repeatForever(SKAction.animate(with: Textures.playerRun, timePerFrame: 0.04))
            }
        }
        static var fall:SKAction{
            get{
                return SKAction.animate(with: Textures.playerFall, timePerFrame: 5)
            }
        }
        static var jump:SKAction{
            get{
                return SKAction.animate(with: Textures.playerJump, timePerFrame: 0.05)
            }
        }
        static var idle:SKAction{
            get{
                return SKAction.repeatForever(SKAction.animate(with: Textures.playerIdle, timePerFrame: 0.1))
            }
        }
    }
    struct Maracuja{
        static var loop:SKAction{
            get{
                let animationDesce   = SKAction.moveBy(x: 0, y: -50, duration: TimeInterval(1))
                let animationSobe    = SKAction.moveBy(x: 0, y: 50, duration: TimeInterval(1))
                let sequencia        = SKAction.sequence([animationDesce,animationSobe])
                let repeticaoForever = SKAction.repeatForever(sequencia)
                return repeticaoForever
            }
        }
    }
    struct Animal{
        static var blink:SKAction{
            get{
                let sumir            = SKAction.fadeOut(withDuration: 1)
                let aparecer         = SKAction.fadeIn(withDuration: 1)
                let grupo            = SKAction.sequence([sumir,aparecer])
                let repeticaoForever = SKAction.repeatForever(grupo)
                return repeticaoForever
            }
        }
    }
    struct minion{
        static var idle:SKAction{
            get{
                let idle          = SKAction.animate(with: Textures.minionidle, timePerFrame: 0.2)
                let repeatforever = SKAction.repeatForever(idle)
                return repeatforever
            }
        }
    }
    struct carbunculo{
        static var idle:SKAction{
            get{
                let idle          = SKAction.animate(with: Textures.carbunculoidle, timePerFrame: 0.5)
                let repeatforever = SKAction.repeatForever(idle)
                return repeatforever
            }
        }
    }
    
    struct macanicsSwipe {
        static var animationSwipe : SKAction{
            get{
                let animationVai = SKAction.moveBy(x: 100, y: 0, duration: 1)
                let animationVolta = SKAction.moveBy(x: -100, y: 0, duration: 1)
                
                let animationLoop = SKAction.sequence([animationVai,animationVolta])
                let repeatforever = SKAction.repeatForever(animationLoop)
                
                return repeatforever
            }
        }
    }
    
    struct mecanicsTap {
        static var animationTap: SKAction{
            get{
                let animationVai = SKAction.scale(by: 2, duration: 1)
                let animationVolta = SKAction.scale(by: 0.5, duration: 1)
                
                let animationLoop = SKAction.sequence([animationVai,animationVolta])
                let repeatforever = SKAction.repeatForever(animationLoop)
                return repeatforever
            }
        }
    }
}
