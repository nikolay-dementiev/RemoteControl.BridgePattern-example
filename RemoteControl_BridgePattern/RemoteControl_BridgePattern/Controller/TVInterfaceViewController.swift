//
//  TVInterfaceViewController.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

class TVInterfaceViewController: TVInterfaceViewControll {

    func switchCannel(channel: Int, tvType: TypeOfViewer?) {
        if let typeOfTvTemp = tvType {
            print ("\(typeOfTvTemp.description): cannel - \(channel).")
        }
    }
    func on(tvType: TypeOfViewer?) {
        if let typeOfTvTemp = tvType {
            print ("\(typeOfTvTemp.description) is turned on.")
        }

    }
    func off(tvType: TypeOfViewer?) {
        if let typeOfTvTemp = tvType {
            print ("\(typeOfTvTemp.description) is turned off.")
        }

    }
}
