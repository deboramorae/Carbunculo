//
//  ChoiseControl.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 29/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation


public class ChoicesControl {
    
    var ponctuation : Int
    var decisaoatual: Int
    var qtdemacas   : Int
    var escolhaum   : Int
    var escolhadois : Int
    init(){
        self.ponctuation  = 0
        self.decisaoatual = 0
        self.qtdemacas    = 0
        self.escolhaum    = 0
        self.escolhadois  = 0 
    }
    
    public func mostrarInformacoes(){
        print("Decisao Atual: \(self.decisaoatual)")
        print("EscolhaUm Atual: \(self.escolhaum)")
        print("EscolhaDois Atual: \(self.escolhadois)")
    }
}

public var choicesControl = ChoicesControl()
