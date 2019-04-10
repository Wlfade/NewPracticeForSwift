//
//  ViewController.swift
//  1.UITextField文本输入控件的使用
//
//  Created by 王玲峰 on 2019/2/24.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let textField = UITextField(frame: CGRect(x: 30, y: 80, width: 260, height: 40))
        textField.borderStyle = .roundedRect //常用 .roundedRect .line .none
        textField.placeholder = "Your Password" //预置内容
        textField.autocorrectionType = .no //自动检测textField区域中的文字是否有拼错或无法识别的文字内容，然后自动将错误的文字内容替换为系统建议的文字
        textField.returnKeyType = .done //.done .continue .search 等12个枚举值，作用是键盘的return key 上显示指定的文字内容，仅是更改显示内容从而提醒用户的作用，并不会对return key的实际功能产生任何影响
        textField.clearButtonMode = .whileEditing //即在用户输入、编辑文本时，在textField输入框的右侧显示一个删除图标
        textField.keyboardType = .default //.default .emailAddress .phonePad .numberPad
        textField.keyboardAppearance = UIKeyboardAppearance.dark //键盘外观为暗色模式 .light 亮色模式
        textField.isSecureTextEntry = true //保护内容
        

        //从项目中加载一张图片设置为视图作为textField对象的leftView属性，从而在textField显示区域的y左侧显示一个小图标
        let lock = UIImage(named: "lock")
        let lockView = UIImageView(image: lock)
        lockView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        textField.leftView = lockView
        textField.leftViewMode = .always
        
        textField.delegate = self
        self.view.addSubview(textField)
    }
    //响应return Key 被点击的时间
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

