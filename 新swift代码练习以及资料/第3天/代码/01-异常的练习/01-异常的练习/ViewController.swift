//
//  ViewController.swift
//  01-异常的练习
//
//  Created by 单车 on 2019/7/22.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //正则表达式
        
        //1.创建正则表达式
        let pattern = "abc"
        
        //2.创建正则表达式对象
        //方式一： try方式
//        do {
//            let regex = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
//        } catch {
//            print(error)
//        }
        
        //方式二：try?
//        guard let regex = try? NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive) else{
//            return
//        }
        
        //方式三：try！
        let regex = try! NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
        
        
    }


}

