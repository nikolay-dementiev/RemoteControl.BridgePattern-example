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
        let typeOfTv1 = TypeOfViewer.SamsungTv
        tv1.typeOfTv = typeOfTv1
        tv1Label.text = "tv1 \(typeOfTv1.description)"
        
        let typeOfTv2 = TypeOfViewer.SonyTv
        tv2.typeOfTv = typeOfTv2
        tv2Label.text = "tv2 \(typeOfTv2.description)"
    }
    
    //call:
    func startToUseRM () {
        var randomCannel: Int = 0
        randomCannel = randRange(0, upper: 80)
        setCannelOnTv (tv1, cannel: randomCannel)
        tv1CannelLabel.text = "cannel: " + String(randomCannel)
        tv1.backgroundColor = getRandomColor()
        
        randomCannel = randRange(20, upper: 100)
        setCannelOnTv (tv2, cannel: randomCannel)
        tv2CannelLabel.text = "cannel: " + String(randomCannel)
        tv2.backgroundColor = getRandomColor()
    }
    
    func setCannelOnTv (tv: ITV, cannel: Int) {
        let lrc:LogitechRemoteController = LogitechRemoteController(tv: tv)
        lrc.setCannelKeyBoard(cannel)
    }
    
}
