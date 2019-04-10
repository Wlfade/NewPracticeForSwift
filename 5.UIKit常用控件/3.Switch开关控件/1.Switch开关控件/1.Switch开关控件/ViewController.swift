//
//  ViewController.swift
//  1.Switch开关控件
//
//  Created by 王玲峰 on 2019/2/24.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let uiSwitch = UISwitch(frame: CGRect(x: 130, y: 100, width: 0, height: 0 ))
        uiSwitch.tintColor = UIColor.brown
        uiSwitch.thumbTintColor = UIColor.purple
        uiSwitch.onTintColor = UIColor.orange
        uiSwitch.setOn(true, animated: true)
        uiSwitch.addTarget(self, action: #selector(ViewController.switchChange(_:)), for: .valueChanged)
        self.view.addSubview(uiSwitch)
        
    }
    @objc func switchChange(_ uiSwitch:UISwitch){
        var message = "Turn on the switch"
        if !uiSwitch.isOn {
            message = "Turn off the switch"
        }
        print(message)
        
    }


}

