//
//  XZSwiftTabBarController.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/12.
//

import UIKit

class XZSwiftTabBarController: UITabBarController {

    var indexFlag = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if let index = tabBar.items?.firstIndex(of: item) {
            if indexFlag != index {
                animationWithIndex(index: index)
            }
        }
    }

    func animationWithIndex(index: Int) {
        var arr = [UIView]()
        for tabBarButton in tabBar.subviews {
            if tabBarButton.isKind(of: NSClassFromString("UITabBarButton")!) {
                arr.append(tabBarButton)
            }
        }
        let pulse = CABasicAnimation(keyPath: "transform.scale")
        
        pulse.duration = 1
        pulse.fromValue = NSNumber(value: 1.05)
        pulse.toValue = NSNumber(value: 0.98)
        arr[index].layer.add(pulse, forKey: nil)

        indexFlag = index
    }

}
