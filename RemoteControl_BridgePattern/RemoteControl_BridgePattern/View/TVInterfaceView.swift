//
//  TVInterfaceView.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

@IBDesignable
class TVInterfaceView: UIView, ITV{
    
    var typeOfTv: TypeOfViewer?
    
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
        //nothing yet...
    }
    
    //MARK:ITV Protocol
    func on() {
        print ("\(typeOfTv) is turned on.")
    }
    
    func off() {
        print ("\(typeOfTv) is turned off.")
    }
    
    func switchCannel(channel: Int) {
        
        if let typeOfTvTemp = typeOfTv {
            print ("\(typeOfTvTemp.description): cannel - \(channel).")
        }
    }
}
