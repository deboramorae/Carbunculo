//
//  AnimationsTextures.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 27/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit

struct Textures{
    static var playerJump:[SKTexture]{
        get{
            var lista:[SKTexture] = []
            for posicao in 0...15{
                lista.append(SKTexture(imageNamed: "akin_pulando_"+String(format: "%02d", posicao)))
            }
            return lista
        }
    }
    static var playerIdle:[SKTexture]{
        get{
            var lista:[SKTexture] = []
            for posicao in 0...9{
                lista.append(SKTexture(imageNamed: "akin_idle_"+String(format: "%02d", posicao)))
            }
            return lista
        }
    }
    static var playerFall:[SKTexture]{
        get{
            return []
        }
    }
    static var playerRun:[SKTexture]{
        get{
            var lista:[SKTexture] = []
            for posicao in 0...23{
                lista.append(SKTexture(imageNamed: "akin_andando_"+String(format: "%02d", posicao)))
            }
            return lista
        }
    }
}
