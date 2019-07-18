//
//  ViewController.swift
//  08-懒加载
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

//懒加载
//1.用的时候才会加载
//2.多次使用只会加载一次

class student: NSObject {
    //直接懒加载赋值
    lazy var str:String = "需要时再调用1"
    
    //懒加载赋一个函数
    lazy var str2 = student.test()
    static func test()->String {
        return "需要时再调用2"
    }
    //懒加载一个闭包
    lazy var str3 = {
        return "需要时再调用3"
    }()
    
    //lazy 关键字可以用于定义某个属性懒加载
    //懒加载一个数组
    lazy var array: [String] = {
        ()->[String] in
        return ["why","lmj","lnj"]
    }()
    
    //懒加载一个空间
    lazy var btn:UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.red
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 40)
        return btn
    }()
}

class ViewController: UIViewController {

    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let s:student = student()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("s.str"+s.str)
        print("s.str2"+s.str2)
        print("s.str3"+s.str3)
        print("s.arr\(s.array)")
        
        self.view.addSubview(s.btn)
    }


}

