//
//  ViewController.swift
//  1.UIButton按钮控件
//
//  Created by 单车 on 2019/2/21.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //不同样式的按钮
        let buttonTypes : [UIButton.ButtonType] = [.system, .contactAdd, .detailDisclosure, .infoDark, .infoLight, .roundedRect]
        for i in 0..<buttonTypes.count{
            let button = UIButton(type: buttonTypes[i])
            button.frame = CGRect(x: 20, y: 30 + i*40, width: 120, height: 30)
            if(i == 0 || i == 5){
                button.setTitle("Buttom\(i+1)", for: .normal)
            }
            view.addSubview(button)
        }

        //不同状态的按钮
        /*
         normal : 正常状态
         highlighted : 高亮状态
         disabled : 禁用状态，此时按钮无法接收交互事件
         selected : 选中状态
         focused : 焦点状态
         application : 作为应用程序使用的附加状态
         reserved : 保留为内部框架使用
         */
        let titleStates : [String] = ["正常状态","高亮状态","选中状态","失败状态"]
        let buttonStates : [UIControl.State] = [.normal, .highlighted, .selected, .disabled]

        let button1 = UIButton(type: .system)
        button1.frame = CGRect(x: 150, y: 50, width: 140, height: 30)
        button1.setTitle(titleStates[0], for: buttonStates[0])
        self.view.addSubview(button1)

        let button2 = UIButton(type: .system)
        button2.frame = CGRect(x: 150, y: 100, width: 140, height: 30)
        button2.setTitle(titleStates[1], for: buttonStates[1])
        button2.isHighlighted = true
        self.view.addSubview(button2)

        let button3 = UIButton(type: .system)
        button3.frame = CGRect(x: 150, y: 150, width: 140, height: 30)
        button3.setTitle(titleStates[2], for: buttonStates[2])
        button3.isSelected = true
        self.view.addSubview(button3)

        let button4 = UIButton(type: .system)
        button4.frame = CGRect(x: 150, y: 200, width: 140, height: 30)
        button4.setTitle(titleStates[3], for: buttonStates[3])
        button4.isEnabled = false
        self.view.addSubview(button4)


        //UIButton 按钮的事件响应
        let button5 = UIButton(type: .roundedRect)
        button5.frame = CGRect(x: 150, y: 400, width: 140, height: 44)
        button5.backgroundColor = UIColor.purple
        button5.tintColor = UIColor.yellow
        button5.setTitle("Tap Me", for: .normal)
        button5.addTarget(self, action: #selector(self.tapped(_:)), for: .touchUpInside)
        self.view.addSubview(button5)
    }

    @objc func tapped(_ sender:UIButton){
        sender.setTitle("The Button is Tapped", for: .normal)
        sender.isEnabled = false
    }
}

