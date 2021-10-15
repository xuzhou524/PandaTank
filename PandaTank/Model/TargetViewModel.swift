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
        TargetModel(title: "测试", totalAmount: "0000"),
        TargetModel(title: "测试", totalAmount: "0000"),
        TargetModel(title: "测试", totalAmount: "0000"),
        TargetModel(title: "测试", totalAmount: "0000"),
        TargetModel(title: "测试", totalAmount: "0000"),
        TargetModel(title: "测试", totalAmount: "0000"),
        TargetModel(title: "测试", totalAmount: "0000")
    ])
}
