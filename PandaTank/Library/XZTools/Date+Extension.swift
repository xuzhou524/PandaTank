//
//  Date+Extension.swift
//  CaiDanMaoCMS
//
//  Created by xuzhou on 2019/7/2.
//  Copyright © 2019 CaiDanMao. All rights reserved.
//

import UIKit

public extension Date {
    func stringWithFormat(format:String) -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = format
        return dateFormat.string(from: self)
    }
    var timeInterval:Int64 {
        get {
            return Int64(self.timeIntervalSince1970 * 1000)
        }
    }
}

public extension Int64 {
    var date:Date {
        get {
            return Date(timeIntervalSince1970: TimeInterval(self / 1000))
        }
    }
}
