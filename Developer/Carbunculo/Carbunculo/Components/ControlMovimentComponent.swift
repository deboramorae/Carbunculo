//
//  ControlMovimentComponent.swift
//  Carbunculo
//
//  Created by Débora Moraes on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import GameplayKit

class ControlMovimentComponent : GKComponent{
    
    enum Moviment {
        case jump
        case run
    }
    
    private var moviments: Set<Moviment> = [.run]
    
    func addMoviment(_ moviment: Moviment) {
        switch moviment {
        case .run:
            moviments.remove(.run)
        case .jump:
            moviments.remove(.jump)
        }
        
        moviments.insert(moviment)
        
    }
    
    func hasMoviment(_ moviment: Moviment) -> Bool {
        return moviments.contains(moviment)
    }
    
    func removeIntent(_ moviment: Moviment) {
        moviments.remove(moviment)
    }
    
    // MARK: - Overrides
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        
        guard let movingPlayer = entity?.component(ofType: JumpingComponent.self) else {
            return
        }
        
        if hasMoviment(.jump){
            movingPlayer.jump()
        }
    }
}
