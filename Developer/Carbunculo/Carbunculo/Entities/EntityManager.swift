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
    
    func remove(_ entity: GKEntity) {
        for component in entity.components {
            if let componentWithNodes = component as? ComponentsWithNodes {
                for node in componentWithNodes.nodesToAddToScene {
                    node.removeFromParent()
                }
                
                for node in componentWithNodes.nodesToAssociateWithComponent {
                    componentsByNode.removeValue(forKey: node)
                }
            }
        }
        
        entities.remove(entity)
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
    func updateCameraPosition(){
        var camera        : SKCameraNode!
        var playernode    : SKNode!
        var ultimaPosicao : CGPoint
        for entity in entities{
            if let componenteCamera = entity.component(ofType: CameraComponent.self){
                camera = componenteCamera.camera
            }
        }
        for entity in entities{
            if let nodeCamera = entity.component(ofType: PlayerNodeComponent.self){
                playernode = nodeCamera.node
               camera.position.x = playernode.position.x+100
            }
        }
        
        for entity in entities.reversed(){
            if let ultimoBackground = entity as? BackgroundEntity{
                
                ultimaPosicao = (ultimoBackground.component(ofType: GKSKNodeComponent.self)?.node.position)!
                
                if playernode.position.x<(ultimaPosicao.x+300){
                  //  camera.position.x = playernode.position.x+100
                }
                break
            }
        }
    }
    func restartScene(){
        if let view = scene.view {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .resizeFill
                
                // Present the scene
                view.presentScene(scene, transition: SKTransition.fade(withDuration: 1))
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}
