//
//  ViewController.swift
//  10-自定义log
//
//  Created by 单车 on 2019/7/19.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1.获取打印所在的文件
        let file = (#file as NSString).lastPathComponent
        
        //2.获取打印所在的方法
        let funcName = #function
        
        //3.获取打印的行数
        let lineNum = #line
        
        print("\(file):[\(funcName)](\(#line))")
        
        XMGLog(message: 123)
        
        XMGLog(message: "hello world")
    }
    
}

