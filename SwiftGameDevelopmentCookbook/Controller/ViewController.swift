//
//  ViewController.swift
//  SwiftGameDevelopmentCookbook
//
//  Created by Admin on 12/28/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import Stevia


class ViewController: UIViewController {

    private var mainView: MainView!
    private var pauseMenuView: PauseMenu!
    var animator: UIDynamicAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUI()
        SetNotifications()
        
        self.animator = UIDynamicAnimator(referenceView: mainView)
        mainView.animateButton.addTarget(self, action: #selector(GravityAnimation), for: .touchUpInside)
        mainView.reDrawButton.addTarget(self, action: #selector(ReDrawView), for: .touchUpInside)
    }

    @objc
    func ReDrawView(){
//        mainView.SetUI()
        mainView.okButton.layer.removeAnimation(forKey: "spin")
        
        print("The View is ReDrawn ")
    }
    
    @objc
    func GravityAnimation(){
//        let anchor = CGPoint(x: self.view.bounds.width / 2, y:0)
//        let attachment = UIAttachmentBehavior(item: mainView.okButton, attachedToAnchor: anchor)
//        self.animator?.addBehavior(attachment)
        
        //Collision
//        let collision = UICollisionBehavior(items: [mainView.okButton])
////        collision.translatesReferenceBoundsIntoBoundary = true
//        collision.setTranslatesReferenceBoundsIntoBoundary(with: UIEdgeInsets(top: 300, left: 50, bottom: 50, right: 50))
//        self.animator?.addBehavior(collision)
        
        //Gravity
//        let gravity = UIGravityBehavior(items: [mainView.okButton])
//        self.animator?.addBehavior(gravity)
        
        //rotation
//        mainView.okButton.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
        
//        var transform = CGAffineTransform.identity
//        transform = transform.translatedBy(x: 50, y: 0)
//        transform = transform.rotated(by: CGFloat(Double.pi / 2))
//        transform = transform.scaledBy(x: 0.5, y: 2)
//        mainView.okButton.transform = transform

        //POP ANIMATION - EaseOut
//        let keyFrameAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
//        keyFrameAnimation.keyTimes = [0.0, 0.7, 1.0]
//        keyFrameAnimation.values = [0.0, 1.2, 1.0]
//        keyFrameAnimation.duration = 0.4
//        keyFrameAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
//        mainView.okButton.layer.add(keyFrameAnimation, forKey: "pop")
        
        //3D ANIMATION
//        let animation = CABasicAnimation(keyPath: "transform.rotation.y")
//        animation.fromValue = 0.0
//        animation.toValue = .pi * 2.0
//        animation.repeatCount = Float.infinity
//        animation.duration = 2.0
//        mainView.okButton.layer.add(animation, forKey: "spin")
//
//        var transform = CATransform3DIdentity
//        transform.m34 = 1.0 / 500.0
//        mainView.okButton.layer.transform = transform
        
//        let nib = UINib(nibName: "PauseMenu", bundle: nil)
//        let loadedObjects = nib.instantiate(withOwner: self, options: nil)
//        if let pauseMenuView = loadedObjects[0] as? UIView {
//            self.view.addSubview(pauseMenuView)
//            pauseMenuView.center = mainView.center
//        }
        
//        self.pauseMenuView = PauseMenu(frame: CGRect(x: 10, y: 50, width: 100, height: 50))
//        self.pauseMenuView.startButton.addTarget(self, action: #selector(StartButtonClicked), for: .touchUpInside)
//        self.view.addSubview(pauseMenuView)

        
        
        
        print("Animated")
    }
    
    
    @objc func StartButtonClicked(){
        self.pauseMenuView.removeFromSuperview()
        
    }
    
    func SetUI(){
        SetControlDefaults()
        SetConstraints()
        
        
    }
    
    func SetControlDefaults(){
        mainView = MainView(frame: UIScreen.main.bounds)
    }
    
    func SetConstraints(){
        self.view.sv([mainView])
        mainView.fillContainer()
    }
    
    func SetNotifications(){
        
        let center = NotificationCenter.default
        let willResignActive = #selector(ApplicationWillResignActive(notification:))
        let didEnterBackground = #selector(ApplicationDidEnterBackground(notification:))
        let willEnterForeGround = #selector(ApplicationWillEnterForeground(notificaiton:))
        let didBecomeActive = #selector(ApplicationDidBecomeActive(notification:))
        
        center.addObserver(self, selector: willResignActive, name: UIApplication.willResignActiveNotification, object: nil)
        center.addObserver(self, selector: didEnterBackground, name: UIApplication.didEnterBackgroundNotification, object: nil)
        center.addObserver(self, selector: willEnterForeGround, name: UIApplication.willEnterForegroundNotification, object: nil)
        center.addObserver(self, selector: didBecomeActive, name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    @objc func ApplicationWillResignActive(notification: Notification){
        print("Application will resign active")
    }
    
    @objc func ApplicationDidEnterBackground(notification: Notification){
        print("Application did enter background")
    }
    
    @objc func ApplicationWillEnterForeground(notificaiton: Notification){
        print("Application will enter foreground")
    }
    
    @objc func ApplicationDidBecomeActive(notification: Notification){
        print("Application became active")
    }
    

}

