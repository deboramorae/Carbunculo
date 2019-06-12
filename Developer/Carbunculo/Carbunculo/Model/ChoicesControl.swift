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
    var escolhatres : Int
    
    init(){
        
            self.ponctuation  = 0
            self.decisaoatual = 0
            self.qtdemacas    = 0
            self.escolhaum    = 0
            self.escolhadois  = 0
            self.escolhatres  = 0
        
        if(PlayerDAO.getSaves().count != 0){
            self.ponctuation  = PlayerDAO.getSaves()[0].pontos
            self.decisaoatual = PlayerDAO.getSaves()[0].checkpoint
            self.qtdemacas    = PlayerDAO.getSaves()[0].qtdemacas
            self.escolhaum    = PlayerDAO.getSaves()[0].escolhaUm
            self.escolhadois  = PlayerDAO.getSaves()[0].escolhaDois
            self.escolhatres  = PlayerDAO.getSaves()[0].escolhatres
        }else{
            self.ponctuation  = 0
            self.decisaoatual = 0
            self.qtdemacas    = 0
            self.escolhaum    = 0
            self.escolhadois  = 0
            self.escolhatres  = 0
        }
    }
    
    public func mostrarInformacoes(){
//        print("Decisao Atual: \(self.decisaoatual)")
//        print("EscolhaUm Atual: \(self.escolhaum)")
//        print("EscolhaDois Atual: \(self.escolhadois)")
//        print("EscolhaTres Atual: \(self.escolhatres)")
        }
}

public var choicesControl = ChoicesControl()
