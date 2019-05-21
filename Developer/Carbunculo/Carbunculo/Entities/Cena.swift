//
//  Cena.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit



class EntidadeCena:GKEntity{
    var cena  :GameScene!
    var camera:SKCameraNode!
    init(cena:GameScene) {
        super.init()
        self.cena = cena
        mirarNaCamera()

    }
    
    func mirarNaCamera(){
        camera      = SKCameraNode()
        cena.camera = camera
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
