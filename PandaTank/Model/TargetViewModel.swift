//
//  TargetViewModel.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/14.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources
import RxRelay

class TargetViewModel {
    let dataSource = Observable.just([
        TargetModel(title: "测试", totalAmount: "1233",currentAmount:"1233"),
        TargetModel(title: "测试", totalAmount: "3232",currentAmount:"545"),
        TargetModel(title: "测试", totalAmount: "5345345",currentAmount:"42333"),
        TargetModel(title: "测试", totalAmount: "4233",currentAmount:"3343"),
        TargetModel(title: "测试", totalAmount: "4234234",currentAmount:"423432"),
        TargetModel(title: "测试", totalAmount: "543",currentAmount:"4"),
        TargetModel(title: "测试", totalAmount: "23",currentAmount:"22")
    ])
}
