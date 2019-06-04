//
//  GameViewController.swift
//  Carbunculo
//
//  Created by Jefferson de Oliveira Lalor on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

var SKViewSizeRect: CGRect!


class GameViewController: UIViewController {
    
    
    var cena: GameScene!
    
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var hudPause: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    
    @IBAction func restart(_ sender: Any) {
        self.hiddenHud()
        //cena.entityManager.restartScene()
        restartScene()
    }
    
    @IBAction func play(_ sender: Any) {
        self.hiddenHud()
        cena.entityManager.alternatePause()
    }
    
    @IBAction func pausar(_ sender: Any) {
        self.showHud()
        cena.entityManager.alternatePause()
    }
    
    private func hiddenHud() {
        pauseButton.isHidden = false
        hudPause.isHidden = true
        playButton.isHidden = true
        restartButton.isHidden = true
    }
    
    private func showHud() {
        pauseButton.isHidden = true
        hudPause.isHidden = false
        playButton.isHidden = false
        restartButton.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hiddenHud()
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "GameScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameScene? {
                
                SKViewSizeRect = view.bounds
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .resizeFill
                //Se preciso altera pra resizeFill
                
                // Present the scene
                if let view = self.view as! SKView? {
                    self.cena = sceneNode
                    view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = true
                    view.showsFPS = Debug.showFPS ?? false
                    view.showsNodeCount = Debug.showNodeCount ?? false
                    view.showsPhysics = Debug.showPhysics ?? false
                }
            }
        }
    }
    
    func restartScene(){
        if let view = self.view as! SKView?{
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .resizeFill
                scene.name = "Nova Cena"
                // Present the scene
                self.cena = (scene as! GameScene)
                view.presentScene(scene, transition: SKTransition.fade(withDuration: 1))
            }
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    public func setScene(cena:GameScene){
    
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
