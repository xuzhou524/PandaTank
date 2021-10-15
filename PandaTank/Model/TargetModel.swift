//
//  TargetModel.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/15.
//

import UIKit

class TargetModel:NSObject {
    
    var title: String = ""
    var totalAmount: String = ""
    
    
    init(title: String,totalAmount: String) {
        self.title = title
        self.totalAmount = totalAmount
    }
}
