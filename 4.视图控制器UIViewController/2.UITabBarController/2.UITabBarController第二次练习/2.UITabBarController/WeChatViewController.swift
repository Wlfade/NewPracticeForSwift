//
//  WeChatViewController.swift
//  2.UITabBarController
//
//  Created by 单车 on 2019/2/21.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class WeChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50))
        label.backgroundColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = NSTextAlignment.center
        label.text = "微信"
        view.addSubview(label)

        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 40, y: 100, width: 100, height: 40)
        button.setTitle("进入第二页", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(WeChatViewController.enterPageTwo), for: .touchUpInside)
        view.addSubview(button)

    }

    /// 跳转到 通讯录页面
    @objc func enterPageTwo(){

        self.tabBarController?.selectedIndex = 1
    }
}
