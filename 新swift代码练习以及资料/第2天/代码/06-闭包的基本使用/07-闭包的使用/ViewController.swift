//
//  ViewController.swift
//  07-闭包的使用
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tools : HttpTool = HttpTool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tools.loadData { (result) in
            print("返回的结果"+result)
            self.view.backgroundColor = UIColor.red
        }
        
        //使用尾随闭包调用函数
        tools.sumAction(num1: 1, num2: 2) { (result) in
            print("计算的结果\(result)")
        }
        // 不使用尾随闭包调用函数
        tools.sumAction(num1: 10, num2: 20, resultBlock: {(result) in
            print(result)
        })
        // 使用尾随闭包调用函数
        tools.sumAction2() {
            print("啥也没有")
        }
        // 使用尾随闭包调用函数，当函数仅有一个尾随闭包作为参数，调用时可以省略括号
        tools.sumAction2 {
            print("啥也没有")
        }
        // 不使用尾随闭包调用函数
        tools.sumAction2 (block: {
            print("非尾随闭包，这是个没啥用的sum函数")
        })
        
        
        // 定义一个常量increaseByTen，该常量指向一个每次调用都会将其内部变量result加10的函数，调用多次结果如下
        let increaseByTen = tools.increaseOperation(10)
        increaseByTen()   // 10
        increaseByTen()   // 20
        increaseByTen()   // 30

        
    }

}

