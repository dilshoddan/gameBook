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
    private var okButton: UIButton!
    
    

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        SetUI()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        SetUI()
    }
    
    func SetUI(){
        SetControlDefaults()
        SetConstraints()
        
    }
    
    func SetControlDefaults(){
        self.backgroundColor = UIColor.white
        
        userNameLabel = UILabel()
        userNameLabel.text = "User Name:"
        
        userName = UITextField()
        userName.backgroundColor = UIColor.lightGray
        userName.borderStyle = .roundedRect
        
        okButton = UIButton()
        okButton.setTitle("OK", for: .normal)
        okButton.backgroundColor = UIColor.darkGray
        okButton.layer.cornerRadius = 5
    }
    
    func SetConstraints(){
        self.sv([userName, okButton])
        userName.width(90%).height(5%).centerHorizontally()
        okButton.width(90%).height(6%).centerHorizontally().centerVertically()
        self.layout(
            |-userName-|,
            10,
            |-okButton-|
        )
    }

}
