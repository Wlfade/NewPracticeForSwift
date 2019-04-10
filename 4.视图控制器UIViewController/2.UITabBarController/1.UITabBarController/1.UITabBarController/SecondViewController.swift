//
//  SecondViewController.swift
//  1.UITabBarController
//
//  Created by 单车 on 2019/2/15.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.yellow
        self.title = "Item#2"
        self.tabBarItem.image = UIImage(named: "bazaar_normal_tab_icon")

        let label = UILabel(frame: CGRect(x: 40, y: 150, width: 240, height: 44))
        label.text = "第二页"
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name: "Arial", size: 36)
        self.view.addSubview(label)
    }
    


}
