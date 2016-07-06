//
//  TypeOfViewer.swift
//  RemoteControl_BridgePattern
//
//  Created by mc373 on 06.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation
import UIKit

enum TypeOfViewer: String, CustomStringConvertible {
    case SamsungTv, SonyTv
    
    var description : String {
        get {
            return self.rawValue
        }
    }
}

