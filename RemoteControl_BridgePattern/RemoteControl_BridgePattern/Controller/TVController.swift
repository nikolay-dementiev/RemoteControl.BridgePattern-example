//
//  TVController.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

class TVController: UIViewController {

    @IBOutlet weak var tv1: TVInterfaceView!
    @IBOutlet weak var tv1Label: UILabel!
    @IBOutlet weak var tv2: TVInterfaceView!
    @IBOutlet weak var tv2Label: UILabel!
    @IBOutlet weak var tv1CannelLabel: UILabel!
    @IBOutlet weak var tv2CannelLabel: UILabel!
    
    @IBAction func changeCannelButtonClicked(sender: AnyObject) {
        
        startToUseRM ()
    }
    
    override func viewDidLoad() {
        tv1.typeOfTv = TypeOfViewer.SamsungTv
        tv2.typeOfTv = TypeOfViewer.SonyTv
    }
    
    //use
    func startToUseRM () {
        
        setCannelOnTv (tv1, cannel: 45)
        setCannelOnTv (tv2, cannel: 23)
    }
    
    func setCannelOnTv (tv: ITV, cannel: Int) {
        let lrc:LogitechRemoteController = LogitechRemoteController(tv: tv)
        lrc.setCannelKeyBoard(cannel)
    }
    
}


//protocol ITV {
//    func on()
//    func off()
//    func switchCannel(channel: Int)
//}

//class SamsungTv: ITV {
//    func on() {
//        print ("Samsung is turned on.")
//    }
//    
//    func off() {
//        print ("Samsung is turned on.")
//    }
//    
//    func switchCannel(channel: Int) {
//        print ("Samsung: cannel - \(channel)")
//    }
//}

//class SonyTv: ITV {
//    func on() {
//        print ("Sony is turned on.")
//    }
//    
//    func off() {
//        print ("Sony is turned on.")
//    }
//    
//    func switchCannel(channel: Int) {
//        print ("Sony: cannel - \(channel)")
//    }
//}

//class AbstractRemoteCotroller {
//    private var tv: ITV?
//    
//    init (tv: ITV) {
//        self.tv = tv
//    }
//    
//    func on() {
//        tv?.on()
//    }
//    
//    func off() {
//        tv?.off()
//    }
//    
//    func setCannel(channel: Int) {
//        tv?.switchCannel(channel)
//    }
//    
//}

//class LogitechRemoteController: AbstractRemoteCotroller {
//    override init (tv: ITV) {
//        super.init(tv: tv)
//    }
//    
//    func setCannelKeyBoard (channel: Int) {
//        setCannel(channel)
//        print("Logitech use keyboard to set channel.")
//    }
//}

////use
//func startToUseRM () {
//    let tv:ITV = SonyTv()
//    let lrc:LogitechRemoteController = LogitechRemoteController(tv: tv)
//    lrc.setCannelKeyBoard(100)
//}