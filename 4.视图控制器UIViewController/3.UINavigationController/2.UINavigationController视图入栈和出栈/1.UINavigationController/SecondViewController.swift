//
//  SecondViewController.swift
//  1.UINavigationController
//
//  Created by 单车 on 2019/2/21.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit
//全局变量，作为当前视图控制器的序号
var pageNum = 0


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.title = "第二页"
        self.view.backgroundColor = UIColor.yellow

        //每当SecondViewController 视图控制器被创建新的实例时，即将pageNum变量+1，然后在第十行代码中，根据pageNum变量的值生成当前视图控制器的标题
        pageNum = pageNum + 1

        self.title = "第\(pageNum)页"

        self.creatBtnView(superView: self.view)

    }

    @objc func creatBtnView(superView : UIView) {

        //push
        let push = UIButton(type: .custom)
        push.frame = CGRect(x: 40, y: 120, width: 240, height: 40)
        push.backgroundColor = UIColor.orange
        push.setTitle("Push page", for: .normal)
        push.addTarget(self, action: #selector(self.pushAction(_:)), for: .touchUpInside)
        superView.addSubview(push)

        //pop
        let pop = UIButton(type: .custom)
        pop.frame = CGRect(x: 40, y: 180, width: 240, height: 40)
        pop.backgroundColor = UIColor.orange
        pop.setTitle("pop page", for: .normal)
        pop.addTarget(self, action: #selector(self.popAction(_:)), for: .touchUpInside)
        superView.addSubview(pop)

        //index
        let index = UIButton(type: .custom)
        index.frame = CGRect(x: 40, y: 280, width: 240, height: 40)
        index.backgroundColor = UIColor.orange
        index.setTitle("index page", for: .normal)
        index.addTarget(self, action: #selector(self.indexAction(_:)), for: .touchUpInside)
        superView.addSubview(index)

        //root
        let root = UIButton(type: .custom)
        root.frame = CGRect(x: 40, y: 340, width: 240, height: 40)
        root.backgroundColor = UIColor.orange
        root.setTitle("root page", for: .normal)
        root.addTarget(self, action: #selector(self.rootAction(_:)), for: .touchUpInside)
        superView.addSubview(root)

    }

    //将新的视图控制器push到导航控制器的栈中
    @objc func pushAction(_ sender:UIButton){
        NSLog((sender.titleLabel?.text)!);
//        let viewController = SecondViewController()
//        self.navigationController?.pushViewController(viewController, animated: true)

        let viewController = ThirdViewController()
        self.navigationController?.pushViewController(viewController, animated: true)

    }
    //将位于栈顶的视图控制器从导航控制器中pop移除
    @objc func popAction(_ sender:UIButton){
        NSLog((sender.titleLabel?.text)!);
        self.navigationController?.popViewController(animated: true)
    }
    //将依次pop位于栈顶的视图控制器,直至index 所指定的位置
    @objc func indexAction(_ sender:UIButton){
        NSLog((sender.titleLabel?.text)!);
        let viewController = self.navigationController?.viewControllers[2]
        self.navigationController?.popToViewController(viewController!, animated: true)
    }
    //将pop导航控制器中所有的视图控制器,仅保留根视图控制器
    @objc func rootAction(_ sender:UIButton){
        NSLog((sender.titleLabel?.text)!);
        self.navigationController?.popToRootViewController(animated: true)

    }

}
