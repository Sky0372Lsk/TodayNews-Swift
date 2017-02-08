//
//  MyTabBarController.swift
//  TodayNews-Swift
//
//  Created by 杨蒙 on 17/2/7.
//  Copyright © 2017年 杨蒙. All rights reserved.
//
// 自定义底部tabbar控制器

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 添加子控制器
        addChildViewControllers()
        
    }
    
    override class func initialize() {
        super.initialize()
        let tabBar = UITabBar.appearance()
        tabBar.tintColor = UIColor(red: 245 / 255, green: 90 / 255, blue: 93 / 255, alpha: 1/0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    /**
     * 添加子控制器
     */
    private func addChildViewControllers() {
        addChildViewController(childController: HomeViewController(), title: "首页", imageName: "home_tabbar_32x32_", selectedImage: "home_tabbar_press_32x32_")
        addChildViewController(childController: VideoViewController(), title: "视频", imageName: "video_tabbar_32x32_", selectedImage: "video_tabbar_press_32x32_")
        addChildViewController(childController: NewCareViewController(), title: "我关注的", imageName: "newcare_tabbar_32x32_", selectedImage: "newcare_tabbar_press_32x32_")
        addChildViewController(childController: MineViewController(), title: "我的", imageName: "mine_tabbar_32x32_", selectedImage: "mine_tabbar_press_32x32_")
    }
    
    private func addChildViewController(childController: UIViewController, title: String, imageName: String, selectedImage: String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImage)
        childController.title = title
        let navC = MyNavigationController(rootViewController: childController)
        addChildViewController(navC)
        
    }

}
