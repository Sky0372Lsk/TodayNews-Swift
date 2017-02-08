//
//  HomeViewController.swift
//  TodayNews-Swift
//
//  Created by 杨蒙 on 17/2/7.
//  Copyright © 2017年 杨蒙. All rights reserved.
//
// 1.首页 控制器

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupUI() {
        view.backgroundColor = globalColor()
        // 设置导航栏属性
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = globalRedColor()
        
    }
    
}
