//
//  XZClient.swift
//  MortgageCalculator-Swift
//
//  Created by gozap on 2017/8/2.
//  Copyright © 2017年 com.longdai. All rights reserved.
//

import UIKit

class XZClient: NSObject{
    
    static let shared = XZClient()
    private override init() {
        super.init()
    }
    
    var mainWindow:UIWindow {
        get {
            let array = UIApplication.shared.windows
            let windowScene = array.first
            return windowScene ?? UIWindow()
        }
    }
}
