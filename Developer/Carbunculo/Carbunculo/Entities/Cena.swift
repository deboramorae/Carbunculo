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
    init(cena:GameScene) {
        super.init()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
