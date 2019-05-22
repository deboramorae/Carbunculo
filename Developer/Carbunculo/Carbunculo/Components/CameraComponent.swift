//
//  CameraComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class CameraComponent:GKComponent{
    var cena  :GameScene!
    var camera:SKCameraNode!
    init(cena:GameScene){
        super.init()
        self.cena = cena
        mirarNaCamera()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func mirarNaCamera(){
        camera      = SKCameraNode()
        camera.name = "Camera do Cenario"
        cena.camera = camera
        cena.addChild(camera)
    }
}
