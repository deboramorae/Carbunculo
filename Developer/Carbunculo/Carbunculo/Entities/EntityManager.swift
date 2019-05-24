//
//  EntityManager.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


class EntityManager {
    private(set) var componentsByNode = [SKNode: GKComponent]()
    private(set) var entities = Set<GKEntity>()
    let scene: SKScene
    
    
    init(scene: SKScene) {
        self.scene = scene
    }
    
    func add(_ entity: GKEntity) {
        entities.insert(entity)

        for component in entity.components {
            if let componentWithNodes = component as? ComponentsWithNodes {
                
                for node in componentWithNodes.nodesToAddToScene {
                    if node.parent == nil {
                        scene.addChild(node)
                    }
                }
                
                for node in componentWithNodes.nodesToAssociateWithComponent {
                    componentsByNode[node] = component
                }
                
            }
        }
        
    }
    
    func jump(){
        for entitie in entities{
            if let component = entitie.component(ofType: JumpingComponent.self)  {
                component.jump()
            }
        }
    }
    
    func idle(){
        for entities in entities {
            if let component = entities.component(ofType: IdleComponent.self) {
                component.idle()
            }
        }
    }
    
    func run(){
        for entities in entities {
            if let component = entities.component(ofType: RunComponent.self) {
                component.run()
            }
        }
    }
    func changePaused(){
        for entities in entities {
            if let component = entities.component(ofType: PauseComponent.self) {
                component.turnPaused()
            }
        }
    }
    func changeUnPaused(){
        for entities in entities {
            if let component = entities.component(ofType: PauseComponent.self) {
                component.turnUnPaused()
            }
        }
    }
    
    func alternatePause(){
        for entities in entities {
            if let component = entities.component(ofType: SceneMachineComponent.self) {
                if component.maquina.currentState is StatePaused{
                    component.maquina.enter(StateUnpaused.self)
                }else{
                    component.maquina.enter(StatePaused.self)
                }
            }
        }
    }
    func update(deltaTime sec: TimeInterval) {
        for entity in entities{
            if let componenteCorpoFisico = entity.component(ofType: PhysicsBodyComponent.self),let componenteMaquina = entity.component(ofType: PlayerStateMachineComponent.self){
                if let velocidade = componenteCorpoFisico.corpofisico?.velocity{
                    
                    if(Float(velocidade.dy)<0){
                        componenteMaquina.maquina.enter(StateFalling.self)
                    }
                }
            }
        }
    }
    func playerLanding(){
        for entity in entities{
            if let componenteMaquina = entity.component(ofType: PlayerStateMachineComponent.self){
                componenteMaquina.maquina.enter(StateIdle.self)
            }
        }
    }
}
