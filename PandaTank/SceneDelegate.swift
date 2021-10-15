//
//  SceneDelegate.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/12.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
//        let homeNav = XZSwiftNavigationController(rootViewController: HomeViewController())
//        homeNav.tabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "ic_HomeTabar")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "ic_HomeTabar_Sel")?.withRenderingMode(.alwaysOriginal))
        
        let homeNav = XZSwiftNavigationController(rootViewController: MainViewController())
        homeNav.tabBarItem = UITabBarItem(title: "钱罐", image: UIImage(named: "ic_HomeTabar")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "ic_HomeTabar_Sel")?.withRenderingMode(.alwaysOriginal))
        
        let userNav = XZSwiftNavigationController(rootViewController: UserViewController())
        userNav.tabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "ic_UserTabar")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "ic_UserTabar_Sel")?.withRenderingMode(.alwaysOriginal))

        let tabBarController = XZSwiftTabBarController()
        tabBarController.viewControllers = [homeNav,userNav]
        tabBarController.tabBar.tintColor = UIColor(hexString: "333333")
        tabBarController.tabBar.shadowImage = createImageWithColor(UIColor(hexString: "F5F5F5"))
        
        UITabBar.appearance().backgroundImage = createImageWithColor(UIColor(hexString: "FFFFFF"))
        
        self.window = UIWindow(windowScene: windowScene)
        self.window?.backgroundColor = UIColor(hexString: "FFFFFF")
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()

    }

}

