//
//  ThirdViewController.swift
//  1.UINavigationController
//
//  Created by 单车 on 2019/2/21.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        //设置了navigationItem 对象的prompt 属性的内容，当oprompt属性被设置后,导航栏高度将变成74
        self.navigationItem.prompt = "正在载入"

        //UIBarButtonSystemItem是枚举类型包含24中按钮样式
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(ThirdViewController.refresh))
        //设置导航栏的背景为不透明
        self.navigationController?.navigationBar.isTranslucent = false

        //设置导航栏样式为黑色
        self.navigationController?.navigationBar.barStyle = .black

        //tintColor 属性是View 专门用来指定所包含的关键元素颜色的
        self.navigationController?.navigationBar.tintColor = UIColor.orange



    }


    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "第三个视图控制器"

        self.view.backgroundColor = UIColor.white
    }
    @objc func refresh(){
        NSLog("刷新数据")
    }

}
