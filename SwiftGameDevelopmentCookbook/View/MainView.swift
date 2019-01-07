//
//  MainView.swift
//  SwiftGameDevelopmentCookbook
//
//  Created by Admin on 12/28/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import Stevia

class MainView: UIView {
    
    private var userNameLabel: UILabel!
    private var userName: UITextField!
    public var okButton: UIButton!
    public var animateButton: UIButton!
    public var reDrawButton: UIButton!
    private var subView: UIView!
    

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        SetUI()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        SetUI()
    }
    
    public func SetUI(){
        SetControlDefaults()
        SetConstraints()
        
    }
    
    func SetControlDefaults(){
        self.backgroundColor = UIColor.white
        
        userNameLabel = UILabel()
        userNameLabel.text = "User Name:"
        
        userName = UITextField()
        userName.backgroundColor = UIColor.white
        userName.borderStyle = .roundedRect
        userName.clipsToBounds = true
        
        okButton = UIButton()
        okButton.setTitle("OK", for: .normal)
        okButton.backgroundColor = UIColor.darkGray
        okButton.layer.cornerRadius = 5
        
        animateButton = UIButton()
        animateButton.setTitle("Animate", for: .normal)
        animateButton.backgroundColor = UIColor.darkGray
        animateButton.layer.cornerRadius = 5
        
        reDrawButton = UIButton()
        reDrawButton.setTitle("ReDraw", for: .normal)
        reDrawButton.backgroundColor = UIColor.darkGray
        reDrawButton.layer.cornerRadius = 5
        
        subView = UIView(frame: UIScreen.main.bounds)
        subView.backgroundColor = UIColor.red
    }
    
    func SetConstraints(){
        
        self.sv([subView])
        subView.width(100%).height(100%).centerInContainer()
        
        subView.sv([userNameLabel, userName, okButton, animateButton, reDrawButton])
        userNameLabel.width(90%).height(5%).centerHorizontally()
        userName.width(90%).height(5%).centerHorizontally()
        okButton.width(90%).height(6%).centerHorizontally()
        animateButton.width(90%).height(6%).centerHorizontally().centerVertically()
        reDrawButton.width(90%).height(6%).centerHorizontally()
        subView.layout(
            |-reDrawButton-|,
            10,
            |-animateButton-|,
            10,
            |-userNameLabel-|,
            |-userName-|,
            10,
            |-okButton-|
        )
        
    }

}
