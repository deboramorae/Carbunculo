//
//  PlayerControlComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ControlReceiverComponent : GKComponent{
    
    func updatePressedButtons(_ pressedButtons: Set<RemoteControlButton>){
        
        guard let controlMoviment = entity?.component(ofType: ControlMovimentComponent.self) else {
            return
        }
        if pressedButtons.contains(.jump){
            controlMoviment.addMoviment(.jump)
        }
        
    }
}
