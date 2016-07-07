//
//  AbstractRemoteCotroller.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class AbstractRemoteCotroller {
    private var tvs: ITV?

    init (tvs: ITV) {
        self.tvs = tvs
    }

    func on() {
        tvs?.on()
    }

    func off() {
        tvs?.off()
    }

    func setCannel(channel: Int) {
        tvs?.switchCannel(channel)
    }

}
