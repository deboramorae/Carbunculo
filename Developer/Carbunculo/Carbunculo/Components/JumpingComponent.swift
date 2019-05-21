//
//  JumpingComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class JumpingComponent:GKComponent{
    weak var player:PlayerNode!
    init(player:PlayerNode){
       self.player = player
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func jump(){
        
        //A partir daqui vai ser a aplicacao da forca.
        player.physicsBody?.applyForce(CGVector(dx: 0, dy: 20))
        print(player)
    }
}
