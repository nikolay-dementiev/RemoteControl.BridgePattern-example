//
//  AbstractRemoteCotroller.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class AbstractRemoteCotroller {
    private var tv: ITV?
    
    init (tv: ITV) {
        self.tv = tv
    }
    
    func on() {
        tv?.on()
    }
    
    func off() {
        tv?.off()
    }
    
    func setCannel(channel: Int) {
        tv?.switchCannel(channel)
    }
    
}
