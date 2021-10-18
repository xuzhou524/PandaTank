//
//  TargetModel.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/15.
//

import UIKit

class TargetModel:NSObject {
    
    var title: String = ""
    var totalAmount: String = "" //总金额
    var currentAmount: String = "" //当前已存金额
    
    init(title: String,totalAmount: String,currentAmount: String) {
        self.title = title
        self.totalAmount = totalAmount
        self.currentAmount = currentAmount
    }
}
