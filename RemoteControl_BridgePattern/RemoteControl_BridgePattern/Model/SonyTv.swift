//
//  SonyTv.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class SonyTv: ITV {
    func on() {
        print ("Sony is turned on.")
    }
    
    func off() {
        print ("Sony is turned on.")
    }
    
    func switchCannel(channel: Int) {
        print ("Sony: cannel - \(channel)")
    }
}
