//
//  RoundView.swift
//  1.视图UIView
//
//  Created by 单车 on 2019/2/14.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit
/*使用class 关键字创建了一个名为 RoundView的类，该类继承自UIView 父类
 RoundView类的主体功能被放置在一对大括号之间
*/
class RoundView: UIView
{

    var color = UIColor.blue //添加了个UIColor 类型的属性 color,并设置color属性的默认值为蓝色


    /// 重写了RoundView 自定义类的初始化init方法。在该初始化方法中，首先调用父类的初始化方法，然后自定义设置背景颜色为无色，从而保证RoundView只显示在drawRect方法中创建的内容
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.backgroundColor = UIColor.clear

    }
    /// 重写drawRect方法。绘制一个UIView最灵活的方式就是由它自己完成绘制。实际上你没有绘制一个View,而只是子类化UIView,并赋予子类绘制自己的能力。当一个UIView需要执行绘图操作时，drawRect:方法就会被调用。覆盖此方法可以让你获得绘图操作的机会。
    ///当drawRect方法被调用时，当前的图形上下文也被设置为属于视图的图形上下文，可以使用 coreGraphics 或 UIKit提供的方法将图形画到该上下文中
    override func draw(_ rect: CGRect) {
        let ctx = UIGraphicsGetCurrentContext() //获得当前的图形上下文
        ctx?.clear(self.frame) //擦除一个矩形区域内所有已存在的绘图内容
        ctx?.setFillColor(color.cgColor) //填充颜色为当前视图属性颜色 color的颜色
        ctx?.fillEllipse(in: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)) //在当前的图形上下文中，在（0，0）位置绘制与当前视图相同尺寸的椭圆

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:)has not been implemented")
    }

}
