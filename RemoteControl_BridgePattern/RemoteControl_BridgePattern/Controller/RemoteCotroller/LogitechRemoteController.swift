//
//  LogitechRemoteController.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class LogitechRemoteController: AbstractRemoteCotroller {
    override init (tv: ITV) {
        super.init(tv: tv)
    }
    
    func setCannelKeyBoard (channel: Int) {
        setCannel(channel)
        print("Logitech use keyboard to set channel.")
    }
}