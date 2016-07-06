//
//  TVInterfaceView.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

protocol TVInterfaceViewControll {
    func switchCannel(channel: Int, tvType: TypeOfViewer?)
    func on(tvType: TypeOfViewer?)
    func off(tvType: TypeOfViewer?)
}

@IBDesignable
class TVInterfaceView: UIView, ITV{
    
    var typeOfTv: TypeOfViewer?
    var interfaceControllerDelegat:TVInterfaceViewControll?

    @IBInspectable var currentBackgroundColor:UIColor = UIColor.clearColor() {
        didSet{
            backgroundColor = currentBackgroundColor
        }
    }
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        currentViewSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        currentViewSetup()
    }
    
    func currentViewSetup () {
        interfaceControllerDelegat = TVInterfaceViewController()
    }
    
    //MARK:ITV Protocol = redirecting
    //here it is necessary to transfer control function in the controller, according to MVC's model
    func on() {
        interfaceControllerDelegat?.on(typeOfTv)
    }
    
    func off() {
        interfaceControllerDelegat?.off(typeOfTv)
    }
    
    func switchCannel(channel: Int) {
        interfaceControllerDelegat?.switchCannel(channel, tvType: typeOfTv)
    }
}
