//
//  AddressBookViewController.swift
//  2.UITabBarController
//
//  Created by 单车 on 2019/2/21.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class AddressBookViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.orange
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50))
        label.backgroundColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = NSTextAlignment.center
        label.text = "通讯录"
        view.addSubview(label)
        
    }

}
