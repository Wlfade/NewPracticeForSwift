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

class ViewController: UIViewController {

    //lazy 关键字可以用于定义某个属性懒加载
    lazy var array: [String] = {
        ()->[String] in
        return ["why","lmj","lnj"]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.array)
    }


}

