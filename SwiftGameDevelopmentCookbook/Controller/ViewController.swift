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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUI()
        SetNotifications()
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

