//
//  SamsungTv.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class SamsungTv: ITV {
    func on() {
        print ("Samsung is turned on.")
    }
    
    func off() {
        print ("Samsung is turned on.")
    }
    
    func switchCannel(channel: Int) {
        print ("Samsung: cannel - \(channel)")
    }
}