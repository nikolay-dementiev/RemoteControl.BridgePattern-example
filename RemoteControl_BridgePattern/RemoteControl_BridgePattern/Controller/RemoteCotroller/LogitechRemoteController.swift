//
//  LogitechRemoteController.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class LogitechRemoteController: AbstractRemoteCotroller {
    override init (tvs: ITV) {
        super.init(tvs: tvs)
    }

    func setCannelKeyBoard (channel: Int) {
        setCannel(channel)
        print("Logitech use keyboard to set channel.")
    }
}
