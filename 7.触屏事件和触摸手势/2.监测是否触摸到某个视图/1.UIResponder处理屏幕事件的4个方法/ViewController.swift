//
//  ViewController.swift
//  1.UIResponder处理屏幕事件的4个方法
//
//  Created by 王玲峰 on 5/4/19.
//  Copyright © 2019 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView : UIImageView!
    var isToucheImageView : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "other")
        self.imageView = UIImageView(image: image)
        var imageViewFrame = self.imageView.frame
        imageViewFrame.origin.x = 100
        imageViewFrame.origin.y = 100
        
        self.imageView.frame = imageViewFrame
        self.view.addSubview(self.imageView)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /*
         UITouch 常用属性说明
         view   触摸事件所在的视图对象
         timestamp  触摸事件发生的时间戳
         tapCount 触摸事件在短时间内的点击次数
         location 触摸事件在指定视图中的位置
         previousLocation 触摸事件在指定视图中的上一次移动时的位置
         phase 触摸事件所在的阶段
         force 触摸的压力值，1.0表示一个普通压力的触摸事件
         */
        
        let touch = touches.first
        let touchPoint = touch?.location(in: self.view)
        
        let imageViewFrame = self.imageView.frame
        let minX = imageViewFrame.origin.x
        let minY = imageViewFrame.origin.y
        let maxX = minX + imageViewFrame.size.width
        let maxY = minY + imageViewFrame.size.height
        
        if (touchPoint?.x)! >= minX && (touchPoint?.x)! <= maxX && (touchPoint?.y)! >= minY && (touchPoint?.y)! <= maxY{
            isToucheImageView = true
            print("点击小黄人")
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !isToucheImageView {
            return
        }
        let touch = touches.first
        let touchPoint = touch?.location(in: self.view)
        let touchPrePoint = touch?.previousLocation(in: self.view)
        let disX = (touchPoint?.x)! - (touchPrePoint?.x)!
        let disY = (touchPoint?.y)! - (touchPrePoint?.y)!
        
        var centerPoint = self.imageView.center
        centerPoint.x += disX
        centerPoint.y += disY
        self.imageView.center = centerPoint

    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        isToucheImageView = false
    }

}

