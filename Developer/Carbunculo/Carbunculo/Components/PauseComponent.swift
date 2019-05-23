//
//  PauseComponent.swift
//  Carbunculo
//
//  Created by Ruy de Ascencão Neto on 22/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class PauseComponent:GKComponent{
    var cena  :GameScene!
    var camera:SKCameraNode!
    var node  : SKShapeNode!
    init(cena:GameScene){
        super.init()
        self.cena = cena
        setCamera()
        addNodeInTheCamera()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setCamera(){
        camera = cena.camera
    }
    func addNodeInTheCamera(){
        node = SKShapeNode(rectOf: CGSize(width: 50, height: 50))
        node.position = CGPoint(x: cena.frame.width/2 - 50,y: cena.frame.height/2 - 50)
        node.fillColor = UIColor.white
        camera.addChild(node)
    }
    
    func turnPaused(){
        node.fillColor = UIColor.red
    }
    
    func turnUnPaused(){
        node.fillColor = UIColor.white
    }
    
}
