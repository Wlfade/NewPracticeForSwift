//
//  ViewController.swift
//  1.UIViewController练习
//
//  Created by 单车 on 2019/2/14.
//  Copyright © 2019 单车. All rights reserved.
//

/*
 UIViewController主要包括以下功能：
 1.在一个复杂的iOS应用程序中往往包含很多屏幕的内容，使用UIViewController可以很方便的管理众多内容
 2.UIViewController类负责创建其管理的视图，并在内存较低时将它们从内容中移出
 3.可以通过视图控制器将新的视图内容以模态窗口的方式显示在当前视图的上方
 4.视图控制器可以响应设备的方向变化，对视图进行相应的调整，以适应新的方法
 5.一些特殊的视图控制器（如导航视图控制器、标签视图控制器）可以使视图的管理更加方便和规范

 视图控制器与MVC
 它们在iOS中的间接通信方式如下：
 1.数据模型Model通过通知Notification和键值观察KVO机制与控制器Controller的间接通信
 2.控制器通过设置View的DataSource属性设置视图的视图源，如UITableView
 3.视图View通过动作Action Target向试图控制器ViewController报告事件的发生，如用户点击了视图
 4.视图View通过Delegate委托（代理）向视图控制器报告事件的发生，如UIAlertViewDelegate，UITextFieldDelegate

 视图控制器的生命周期
 一个视图控制器的整个生命周期可以划分为"视图控制器创建"-> "添加到窗口中"->"视图被移出m屏幕"->"销毁"
 alloc : 创建一个视图控制器对象，并分配内存空间
 init() : 对视图控制器对象进行初始化操作
 loadView : 如果从故事板文件创建视图，就从故事板中加载视图
 viewDidLoad : 视图载入成功，可以进行一些自定义操作
 viewWillApper : 视图将要被展现在屏幕上
 viewDidApper : 视图已经在屏幕上完成渲染操作并正确显示
 viewWillLayoutSubViews : 视图即将布局子视图
 viewDidLayoutSubViews : 视图已经完成子视图的布局
 viewWillDisappear : 视图将要从屏幕中消失
 viewDidDisapper : 视图已经从屏幕中消失
 dealloc : 视图被销毁
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
    }


}

