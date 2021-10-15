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
    let sections = Observable.just([
        MySection(header: "基本控件", items: [
            "UILable的用法",
            "UIText的用法",
            "UIButton的用法"
        ]),
        MySection(header: "高级控件", items: [
            "UITableView的用法",
            "UICollectionViews的用法"
        ])
    ])

}


//自定义Section
struct MySection {
    var header: String
    var items: [Item]
}
 
extension MySection : AnimatableSectionModelType {
    typealias Item = String
     
    var identity: String {
        return header
    }
     
    init(original: MySection, items: [Item]) {
        self = original
        self.items = items
    }
}
