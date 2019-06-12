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
    var entitie: GKEntity?
    static var  ischoosing = false
    
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
        if entity is BackgroundEntity{
            entitie = entity
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
                if componenteMaquina.maquina.enter(StateIdle.self){
                    if let componentNode = entity.component(ofType: PlayerNodeComponent.self){
                        componentNode.node.removeAllActions()
                        componentNode.node.physicsBody?.velocity.dx = 0.0
                        componentNode.node.run(Animations.Player.idle)
                    }
                }
            }
        }
    }
    
    func updatePositionPlayerInChoice_Save(numberChoice: Int) {

        for entity in entities{
            if let player = entity.component(ofType: PlayerNodeComponent.self)?.node{
                if numberChoice == 1 {
                    player.position = CGPoint.initialPositionNode.playerFirstChoice_Save
                    self.addMacaco()
                }else if numberChoice == 2 {
                    
                        let actionAndar = SKAction.run {
                            self.run()
                            player.position.x += 10
                        }
                        actionAndar.duration = 4
                        self.addTucano()
                        let actionSave = SKAction.sequence([actionAndar])
                        player.run(actionSave)
                    
                        self.removeTucano()
                    
                }
                
            }
        }
    }
    
    
    func updatePositionPlayerInChoice_NoSave(numberChoice: Int) {
        
        for entity in entities{
            if let player = entity.component(ofType: PlayerNodeComponent.self)?.node{
                if numberChoice == 1 {
                    player.position = CGPoint.initialPositionNode.playerFirstChoice_NoSave
                }else if numberChoice == 2 {
                    self.jump()
                    player.position = CGPoint.initialPositionNode.playerSecondChoice_NoSave
                }
            }
        }
    }
    
    func addMacaco(){
        let animal = AnimalEntity(entityManager: self, scene: self.scene as! GameScene, texture: SKTexture.imageNamed.macacoSave, position: CGPoint.initialPositionNode.macacoSave, size: CGSize.sizeNode.macacoSave, name: "macacoFeliz")
        
        let coracao = CoracaoEntity(entityManager: self, scene: self.scene as! GameScene, position: CGPoint.initialPositionNode.coracaoMacacoNode)
        
        let maracuja = MaracujaEntity(entityManager: self, scene: self.scene as! GameScene, position: CGPoint.initialPositionNode.maracujaMacaco)
        
        self.add(maracuja)
        
        self.add(coracao)
        self.add(animal)
        
    }
    
    func addTucano(){
        let animal = AnimalEntity(entityManager: self, scene: self.scene as! GameScene, texture: SKTexture.imageNamed.animalSave, position: CGPoint.initialPositionNode.animalSave, size: CGSize.sizeNode.animalSave, name: "tucanoFeliz")
        
        let coracao = CoracaoEntity(entityManager: self, scene: self.scene as! GameScene, position: CGPoint.initialPositionNode.coracaoNode)
        
        self.add(coracao)
        self.add(animal)
    }
    
    func removeTucano(){
        for entity in entities{
            if let animal = entity.component(ofType: AnimalNodeComponent.self)?.node{
                if animal.name == "tucano" {
                    animal.run(SKAction.fadeOut(withDuration: 0.5))
                    //self.remove(animal.entity as! AnimalEntity)
                }
            }
        }
        for entity in entities{
            if let balao = entity.component(ofType: BalaoExclamacaoNodeComponent.self)?.node{
                if balao.name == "balaoTucano" {
                    self.remove(balao.entity as! BalaoEntity)
                }
            }
        }
        
    }
    
    func removeNodeInvisible(){
        for entity in entities{
            if let invisibleMecanics = entity.component(ofType: InvisibleMecanicsNodeComponent.self)?.node{
                self.remove(invisibleMecanics.entity as! InvisibleMecanicsEntity)
            }
        }
        for entity in entities{
            if let mecanicTap = entity.component(ofType: MecanicsTapComponent.self)?.node{
                self.remove(mecanicTap.entity as! MecanicsTapEntity)
            }
        }
    }
    
    func saveProgress(){
//        print("Antes \(choicesControl.decisaoatual)")
        choicesControl.decisaoatual = 1
//        print("Depois \(choicesControl.decisaoatual)")
        if(PlayerDAO.getSaves().count == 0){
            PlayerDAO.addPlayer(player: PlayerPersistence(pontos:choicesControl.ponctuation, checkpoint: choicesControl.decisaoatual, qtdemacas: choicesControl.qtdemacas, escolhaUm: choicesControl.escolhaum, escolhaDois: choicesControl.escolhadois,escolhatres: choicesControl.escolhatres))
        }else{
            PlayerDAO.updateData(player: PlayerPersistence(pontos:choicesControl.ponctuation, checkpoint: choicesControl.decisaoatual, qtdemacas: choicesControl.qtdemacas, escolhaUm: choicesControl.escolhaum, escolhaDois: choicesControl.escolhadois,escolhatres: choicesControl.escolhatres))
        }
    }
    func saveProgress2(){
//        print("Antes \(choicesControl.decisaoatual)")
        choicesControl.decisaoatual = 2
//        print("Depois \(choicesControl.decisaoatual)")
        if(PlayerDAO.getSaves().count == 0){
            PlayerDAO.addPlayer(player: PlayerPersistence(pontos:choicesControl.ponctuation, checkpoint: choicesControl.decisaoatual, qtdemacas: choicesControl.qtdemacas, escolhaUm: choicesControl.escolhaum, escolhaDois: choicesControl.escolhadois, escolhatres: choicesControl.escolhatres))
        }else{
            PlayerDAO.updateData(player: PlayerPersistence(pontos:choicesControl.ponctuation, checkpoint: choicesControl.decisaoatual, qtdemacas: choicesControl.qtdemacas, escolhaUm: choicesControl.escolhaum, escolhaDois: choicesControl.escolhadois, escolhatres: choicesControl.escolhatres))
        }
    }
    
    func saveProgress3(){
//        print("Antes \(choicesControl.decisaoatual)")
        choicesControl.decisaoatual = 3
//        print("Depois \(choicesControl.decisaoatual)")
        if(PlayerDAO.getSaves().count == 0){
            PlayerDAO.addPlayer(player: PlayerPersistence(pontos:choicesControl.ponctuation, checkpoint: choicesControl.decisaoatual, qtdemacas: choicesControl.qtdemacas, escolhaUm: choicesControl.escolhaum, escolhaDois: choicesControl.escolhadois, escolhatres: choicesControl.escolhatres))
        }else{
            PlayerDAO.updateData(player: PlayerPersistence(pontos:choicesControl.ponctuation, checkpoint: choicesControl.decisaoatual, qtdemacas: choicesControl.qtdemacas, escolhaUm: choicesControl.escolhaum, escolhaDois: choicesControl.escolhadois, escolhatres: choicesControl.escolhatres))
        }
    }
    func updateCameraPosition(){
        
        var camera        : SKCameraNode!
        var playernode    : SKNode!
        
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
        
        
        if entitie != nil{
            if((playernode.position.x+100)<(entitie?.component(ofType: GKSKNodeComponent.self)?.node.position.x)!){
                camera.position.x = playernode.position.x+100
                
            }
        }
        print(playernode.position)
    }
    
    func restartScene(){
        if let view = scene.view {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .resizeFill
                scene.name = "Nova Cena"
                // Present the scene
                view.presentScene(scene, transition: SKTransition.fade(withDuration: 1))
            }
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
}
