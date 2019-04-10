//
//  MainTabController.swift
//  3.TabBarViewController自定义
//
//  Created by 单车 on 2019/2/21.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let wechat = WeChatViewController()
        let address = AddressBookViewController()
        let find = FindViewController()
        let mine = MineViewController()

        creatTabbarView(viewController: wechat, image: "tab1", selectImage: "selectTab1", title: "微信")
        creatTabbarView(viewController: address, image: "tab2", selectImage: "selectTab2", title: "通讯录")
        creatTabbarView(viewController: find, image: "tab3", selectImage: "selectTab3", title: "发现")
        creatTabbarView(viewController: mine, image: "tab4", selectImage: "selectTab4", title: "我")

        self.tabBar.tintColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)


        self.viewControllers =
            [
                UINavigationController(rootViewController: wechat),
                UINavigationController(rootViewController: address),
                UINavigationController(rootViewController: find),
                UINavigationController(rootViewController: mine)
        ]

        // 修改tabbar的位置
        self.tabBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44)
        // 修改UITabBarController的索引
        self.selectedIndex = 0
        // Tab图标上方显示角标
        wechat.tabBarItem.badgeValue = "10"

        address.tabBarItem.badgeValue = "8"


    }
    @objc func creatTabbarView(viewController:UIViewController, image:NSString,selectImage:NSString,title:NSString){
        viewController.tabBarItem.image = UIImage(named: image as String)?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.selectedImage = UIImage(named: selectImage as String)?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.title = title as String;
        viewController.title = title as String;
    }

}
