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
var UIDarkView: UIView!
var gameViewController: GameViewController!

class GameViewController: UIViewController {
    
    
    var cena: GameScene!
    
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var hudPause: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var darkView: UIView!
    @IBOutlet weak var imageHUD: UIImageView!
    @IBOutlet weak var contMaracuja: UIImageView!
    @IBOutlet weak var labelContMaracuja: UILabel!
    
    
    
    public static func changeDarkView(value: Bool) {
        UIDarkView.isHidden = value
    }
    
    @IBAction func restart(_ sender: Any) {
        restartSong.prepareMusic()
        restartSong.playSong()
        self.hiddenHud()
        //cena.entityManager.restartScene()
        restartScene()
    }
    
    @IBAction func play(_ sender: Any) {
        unpauseSong.prepareMusic()
        unpauseSong.playSong()
        
        if isPlayerWalk {
            playerWalkSong.playSong()
        }
        
        backgroundSong_Phase01.playSong()
        self.showPauseAndContMaracuja()
        self.hiddenHud()
        cena.entityManager.alternatePause()
    }
    
    @IBAction func pausar(_ sender: Any) {
        if backgroundSong_Phase01.songIsPlaying() {
            backgroundSong_Phase01.pauseSong()
        }
        
        if playerWalkSong.songIsPlaying() {
            playerWalkSong.pauseSong()
        }

        pauseSong.prepareMusic()
        pauseSong.playSong()
        self.hiddenPauseAndContMaracuja()
        self.showHud()
        cena.entityManager.alternatePause()
    }
    
    private func hiddenPauseAndContMaracuja() {
        pauseButton.isHidden = true
        contMaracuja.isHidden = true
        labelContMaracuja.isHidden = true
    }
    
    private func showPauseAndContMaracuja() {
        pauseButton.isHidden = false
        contMaracuja.isHidden = false
        labelContMaracuja.isHidden = false
    }
    
    private func hiddenHud() {
        darkView.isHidden = true
        pauseButton.isHidden = false
        hudPause.isHidden = true
        playButton.isHidden = true
        restartButton.isHidden = true
        imageHUD.isHidden = false
        labelContMaracuja.isHidden = false
    }
    
    private func showHud() {
        darkView.isHidden = false
        pauseButton.isHidden = true
        hudPause.isHidden = false
        playButton.isHidden = false
        restartButton.isHidden = false
        imageHUD.isHidden = true
        labelContMaracuja.isHidden = true
    }
    
    private func rescueQuantityMaracujas() {
        var text = ""
        
        if choicesControl.qtdemacas <= 9 {
            text = "0\(choicesControl.qtdemacas)"
        }else{
            text = String(choicesControl.qtdemacas)
        }
        
        self.labelContMaracuja.text = text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        gameViewController = self
        
        if Debug.ignoreCutscene ?? false {
            self.loadGameSceneView()
        }else{
            self.loadCutsceneView()
        }
    }
    func changeImageHud(){
        imageHUD.image = UIImage(named: "maracujaMistico")
        pauseButton.setImage(UIImage(named: "pauseMistico"), for: .normal)
        
    }
    func loadGameSceneView() {
        if let scene = GKScene(fileNamed: "GameScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameScene? {
                SKViewSizeRect = view.bounds
                UIDarkView = darkView
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .resizeFill
                //Se preciso altera pra resizeFill
                
                // Present the scene
                if let view = self.view as! SKView? {
                    self.cena = sceneNode
                    view.presentScene(sceneNode, transition: SKTransition.fade(withDuration: 1))

                    self.hiddenHud()
                    self.showPauseAndContMaracuja()
                    self.rescueQuantityMaracujas()
                    
                    view.ignoresSiblingOrder = true
                    view.showsFPS = Debug.showFPS ?? false
                    view.showsNodeCount = Debug.showNodeCount ?? false
                    view.showsPhysics = Debug.showPhysics ?? false
                }
            }
        }
    }
    
    
    func loadCutsceneView() {
        self.hiddenHud()
        self.hiddenPauseAndContMaracuja()
        if let scene = GKScene(fileNamed: "GameCutscene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameCutscene? {
                
                SKViewSizeRect = view.bounds
                UIDarkView = darkView
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .resizeFill
                //Se preciso altera pra resizeFill
                
                // Present the scene
                if let view = self.view as! SKView? {
                    //                    self.cena = sceneNode
                    backgroundSong_Phase01.stopSong()
                    backgroundSong_Phase02.stopSong()

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
