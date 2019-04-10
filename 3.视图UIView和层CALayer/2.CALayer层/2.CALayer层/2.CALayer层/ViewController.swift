//
//  ViewController.swift
//  2.CALayer层
//
//  Created by 单车 on 2019/2/14.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let view1 = UIView(frame: CGRect(x: 60, y: 60, width: 200, height: 200))
        view1.backgroundColor = UIColor.red


        //CALayer边框
        view1.layer.borderWidth = 20
        view1.layer.borderColor = UIColor.lightGray.cgColor
        //因为UIColor 是定义在UIKit 框架中的，只能在iOS中使用，而CALayer是定义在QuartzCore框架中，所以需要使用具有跨平台特性的CGColorRef数据类型。通过调用UIColor 对象的CGColor属性可以获得UIColor转换后的CGColorRef值

        //CALayer投影

        self.view.addSubview(view1)


        let view2 = UIView(frame: CGRect(x: 60, y: 270, width: 60, height: 60))
        view2.backgroundColor = UIColor.blue


        view2.layer.shadowColor = UIColor.red.cgColor
        view2.layer.shadowOffset = CGSize(width: 10.0, height: 10.0) //水平方向向右偏移10,垂直方向向下偏移10
        view2.layer.shadowOpacity = 0.45 //阴影的不透明度
        view2.layer.shadowRadius = 5 //阴影的圆角

        self.view.addSubview(view2)

        //CALayer圆角
        let view3 = UIView(frame: CGRect(x: 60, y: 350, width: 20, height: 20))
        view3.backgroundColor = UIColor.brown
        view3.layer.cornerRadius = 4
        view3.layer.masksToBounds = true
        self.view.addSubview(view3)


        let subView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 10))
        subView.backgroundColor = UIColor.gray


        view3.addSubview(subView)


        //CALayer渐变
        let rect = CGRect(x: 20, y: 380, width: 100, height: 100)

        let gradientView = UIView(frame: rect)


        let gradientLayer = CAGradientLayer()

        gradientLayer.frame = gradientView.bounds

        let fromColor = UIColor.yellow.cgColor

        let midColor = UIColor.blue.cgColor

        let toColor = UIColor.red.cgColor

        gradientLayer.colors = [fromColor,midColor,toColor]

        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.locations = [0,0.3,1]

        gradientView.layer.addSublayer(gradientLayer)

        self.view.addSubview(gradientView)








    }


}

