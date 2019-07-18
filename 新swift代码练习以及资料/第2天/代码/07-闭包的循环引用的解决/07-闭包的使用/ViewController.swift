//
//  ViewController.swift
//  07-闭包的使用
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tools : newHttpTool = newHttpTool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        /*
         weakSelf?.view
         如果前面的可选类型，没有值，后面的所有的代码都不会执行
         如果前面可选类型，有值，系统会自动将weakSelf 进行解包，并且使用weakself
         */
        //解决循环引用的方式一：
        /*
        weak var weakSelf = self
        tools.loadData { (result) in
            print("返回的结果"+result)

            weakSelf?.view.backgroundColor = UIColor.red
        }
 */
        //解决循环引用的方式二：
        /*
        tools.loadData {[weak self] (result) in
            print("返回的结果"+result)
            
            self?.view.backgroundColor = UIColor.red
        }
 */
        //解决循环引用的方式三：
        /*
        tools.loadData {[unowned self] (result) in
            print("返回的结果"+result)
            
            self
                .view.backgroundColor = UIColor.red
        }
 */
        
        //(主要使用方法)解决循环引用的方式二：

         tools.loadData {[weak self] (result) in
            print("返回的结果"+result)
            self?.view.backgroundColor = UIColor.red
         }
    }
    
    //deinit 相当于OC 中的 dealloc 方法，
    deinit {
        print("deinit")
    }
}

