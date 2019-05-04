//
//  ViewController.swift
//  1.UIResponder处理屏幕事件的4个方法
//
//  Created by 王玲峰 on 5/4/19.
//  Copyright © 2019 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //在屏幕中任意位置点击一下
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchBegan")
    }
    //按下手指滑动一段距离 根据滑动的距离和事件的长短调用次数不等的touchesMoved
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchMoved")
    }
    //滑动结束后最后一次调用touchesEnd
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchEnded")
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchCancelled")
    }
}

