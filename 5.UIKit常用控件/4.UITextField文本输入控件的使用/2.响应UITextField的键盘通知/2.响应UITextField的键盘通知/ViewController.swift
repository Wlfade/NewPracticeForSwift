//
//  ViewController.swift
//  2.响应UITextField的键盘通知
//
//  Created by 王玲峰 on 2019/2/24.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    var textField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField = UITextField(frame: CGRect(x: 30, y: 480, width: 260, height: 30))
        textField.borderStyle = .roundedRect
        textField.delegate = self
        self.view .addSubview(textField)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc func keyboardWillShow(_ notification:Notification?){
        textField.frame = CGRect(x: 30, y: 280, width: 260, height: 30)
    }
    @objc func keyboardWillHide(_ notification:Notification?){
        textField.frame = CGRect(x: 30, y: 480, width: 260, height: 30)
    }


}

