import Foundation
import UIKit
import SpriteKit


enum RemoteControlButton {
    case jump
    case run
}

class RemoteControl : RemoteControls {
    
    private var SwipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer()
    private var TapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer()
    private var wasPlayerIsTapped = false
    private var wasPlayerSwipe = false
    private weak var view: UIView?
    
    var pressedButtons: Set<RemoteControlButton> {
        var pressedButtons = Set<RemoteControlButton>()
        
        if wasPlayerSwipe {
            wasPlayerSwipe = false
            pressedButtons.insert(.run)
        }
        
        if wasPlayerIsTapped{
            wasPlayerIsTapped = false
            pressedButtons.insert(.jump)
        }
        
        return pressedButtons
    }
    
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

protocol RemoteControls: class {
    var pressedButtons: Set<RemoteControlButton> { get }
}

