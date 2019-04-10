//
//  NewTwoViewController.swift
//  1.UIViewController练习
//
//  Created by 单车 on 2019/2/14.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class NewTwoViewController: UIViewController {

    var label : UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.cyan

        label = UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.text = ""
        self.view.addSubview(label)

        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.setTitle("打开新的视图控制器", for: .normal)
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(NewTwoViewController.openAction), for:.touchUpInside)

        self.view.addSubview(button)



    }
    @objc func openAction()
    {
        print("按钮点击了")
        let newViewController = NewViewController()
        newViewController.labelTet = "传递的参数"
        newViewController.viewControlelr = self
        self.present(newViewController, animated: true, completion: nil)

    }


}
