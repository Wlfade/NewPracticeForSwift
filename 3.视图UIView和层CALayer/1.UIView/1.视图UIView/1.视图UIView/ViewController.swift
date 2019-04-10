//
//  ViewController.swift
//  1.视图UIView
//
//  Created by 单车 on 2019/2/13.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit
/*
 UIView的外观属性
 1.背景颜色backgroundColor
 2.透明度alpha
 3.隐藏属性 hidden
 4.切边属性 clipsToBounds (如果需要限制子视图的显示范围不超过父视图的显示区域)
 UIView的几何属性 frame 、 bounds

 UIView的嵌套和层次关系
 1.insertSubView(view:,at) : 在指定的位置上插入视图
 2.insertSubView(view:,aboveSubView) : 将视图添加到指定视图上方
 3.insertSubView(view:,aboveSubView) : 将视图添加到指定视图下方
 4.bringSubView(toFront:) : 将指定的视图移动到最前面
 5.bringSubView(toBlack:) : 将指定的视图移动到最后面
 6.exchangeSubView(at:,withSubViewAt:)交换两个指定位置的子视图在父视图中的位置
 7.removeFromSuperview 将子视图从父视图中删除

 UIView 的交互属性 userInteractionEnabled 属性可以激活用户的交互特性

 UIView 的变形操作
 1.CGAffineTransformMakeTranslation : 通过指定的x,y值创建一个平移矩阵
 2.CGAffineTransformTransle : 对已经存在的矩阵进行平移
 3.CGAffineTransformMakeRotation : 通过指定角度来创建一个旋转矩阵
 4.CGAffineTransformRotate : 对已存在的矩阵进行旋转
 5.CGAffineTransformMakeScale : 通过指定的x,y缩放因子创建一个缩放矩阵
 6.CGAffineTransformScale : 对已存在的矩阵进行缩放
 7.CGAffineTransformInvert : 反转矩阵，将值与反转矩阵相乘得到原先的值
 8.CGAffineTransformConcat : 对仿射效果进行叠加操作
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //UIView的外观属性
        //添加一个红色的View
//        let view1 = UIView(frame: CGRect(x: 0, y: 20, width: 40, height: 40))
//        view1.backgroundColor = UIColor.red
//        view1.isHidden = true
//        self.view.addSubview(view1)
//
//        //添加一个图片为背景颜色的View
//        let view2 = UIView(frame: CGRect(x: 0, y: 70, width: 50, height: 50))
//        let image = UIImage(named: "tabbar_compose_camera")
//        view2.backgroundColor = UIColor.init(patternImage: image!)
//        //通过UIImage 对象 给加载资源文件夹中的一张图片，然后使用UIColor类的init方法将加载的图片作为团
//
//        view2.alpha = 0.3
//        view2.clipsToBounds = true
//        self.view.addSubview(view2)


        //UIView的几何属性
//        let view3 = UIView(frame: CGRect(x: 0, y: 120, width: 250, height: 250))
//        view3.backgroundColor = UIColor.red
//        view3.clipsToBounds = true
//        view3.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
//        //添加一个图片为背景颜色的View
//        let view4 = UIView(frame: CGRect(x: 10, y: 10, width: 150, height: 150))
//        view4.backgroundColor = UIColor.brown
//
//        view3.addSubview(view4)
//
//        self.view.addSubview(view3)


        //UIView 的交互属性
//        let guesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.SingleTap))
//        view4.addGestureRecognizer(guesture)
//
//
//         @objc func SingleTap()
//        {
//            print("You touched me")
//        }

        //UIView 的变形操作
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.center = self.view.center
        view.backgroundColor = UIColor.red
        self.view.addSubview(view)


        let transform = view.transform
        //平移仿射变换
        //在垂直方向上将视图的矩阵向下平移100
        view.transform = transform.translatedBy(x: 0, y: 100)

        //缩放仿射变换
        //将视图在水平和垂直方向各放大了2倍
        view.transform = transform.scaledBy(x: 2, y: 2)

        //旋转仿射变换
        //参数 angle 标识在顺时针方向上旋转的角度
        view.transform = transform.rotated(by: 3.14/4)

        //斜切仿射变换
        /*
         CGAffineTransformMke方法参数列表
         sx:水平方向上的缩放因子 a  tx:水平方向上的位移因子 tx shx:水平方向上的斜切因子 b
         sy:垂直方向上的缩放因子 d ty:垂直方向上的位移因子 shy:垂直方向上的斜切因子c
         */
        //a、d 为1 保持缩放比例不变 ， tx、ty 为0 水平方向和垂直方向不进行平移 b、c 为0.5 在水平和垂直方向上进行斜切操作
        view.transform.a = 1.0
        view.transform.b = 0.5
        view.transform.c = 0.5
        view.transform.d = 1.0
        view.transform.tx = 0.0
        view.transform.ty = 0.0

        let roundView = RoundView(frame: CGRect(x: 0, y: 0, width: 240, height: 140))
        roundView.color = UIColor.green
        self.view.addSubview(roundView)
    }
}

