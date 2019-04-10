//
//  NewViewController.swift
//  1.UIViewController练习
//
//  Created by 单车 on 2019/2/14.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    weak var viewControlelr : NewTwoViewController?
    var labelTet = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.red

        let label = UILabel(frame: CGRect(x: 40, y: 100, width: 240, height: 44))
        label.text = labelTet
        self.view.addSubview(label)

        let button = UIButton(frame: CGRect(x: 40, y: 180, width: 240, height: 44))
        button.setTitle("关闭", for: .normal)
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(NewViewController.close), for: .touchUpInside)
        self.view.addSubview(button)


    }
    @objc func close()
    {
        viewControlelr?.label.text = "返回的参数"
        self.dismiss(animated: true , completion: nil)
    }


}
