//
//  RemoteControl.swift
//  Carbunculo
//
//  Created by Débora Moraes on 21/05/19.
//  Copyright © 2019 CarbunculoTeam. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit


fileprivate class InstantTapGestureRecognizer: UITapGestureRecognizer {
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent) {
        super.pressesBegan(presses, with: event)
        super.pressesEnded(presses, with: event)
    }
}

class RemoteControl {
    
    private var SwipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer()
    
    private var TapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer()
    private var wasPlayerIsTapped = false
    private var wasPlayerSwipe = false
    
    private weak var view: UIView?
    
    init(view: UIView) {
        self.view = view
        
        SwipeGestureRecognizer.addTarget(self, action: #selector(RemoteControl.rightSwipeGesture))
        SwipeGestureRecognizer.direction = .right
        
        TapGestureRecognizer.addTarget(self, action: #selector(RemoteControl.tapGesture))
        
        view.addGestureRecognizer(TapGestureRecognizer)
        view.addGestureRecognizer(SwipeGestureRecognizer)
        
    }
    
    deinit {
        view?.removeGestureRecognizer(SwipeGestureRecognizer)
        view?.removeGestureRecognizer(TapGestureRecognizer)
        
    }
    
    @objc func rightSwipeGesture(){
        wasPlayerSwipe = true
    }
    @objc func tapGesture(){
        wasPlayerIsTapped = true
        
    }
}
