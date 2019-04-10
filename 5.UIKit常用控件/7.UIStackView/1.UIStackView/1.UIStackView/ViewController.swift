//
//  ViewController.swift
//  1.UIStackView
//
//  Created by 王玲峰 on 2019/2/24.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stackView : UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        
        view1.backgroundColor = UIColor.red
        view2.backgroundColor = UIColor.orange
        view3.backgroundColor = UIColor.blue
        
        stackView = UIStackView(arrangedSubviews: [view1,view2,view3])
        stackView.frame = CGRect(x: 0, y: 0, width: 320, height: 400)
        stackView.axis = .horizontal //定义子视图的排列方向：横向或纵向
        stackView.alignment = .fill //定义子视图之间axis方向的对齐方式，如顶部对齐、底部对齐、左对齐
        stackView.distribution = .fillEqually //定义子视图沿着axis排列的布局规则
        stackView.spacing = 10 //用来控制子视图的间隔
        stackView.backgroundColor = UIColor.orange
        self.view.addSubview(stackView)
        
        let spaccing = UIButton(type: .roundedRect)
        spaccing.frame = CGRect(x: 20, y: 420, width: 280, height: 30)
        spaccing.setTitle("增加间隔", for: .normal)
        spaccing.addTarget(self, action: #selector(setCustomSpacing(_:)), for: .touchUpInside)
        self.view.addSubview(spaccing)
        
        
        let insert = UIButton(type: .roundedRect)
        insert.frame = CGRect(x: 20, y: 460, width: 280, height: 30)
        insert.setTitle("插入视图", for: .normal)
        insert.addTarget(self, action: #selector(insertArrangedSubView(_:)), for: .touchUpInside)
        self.view.addSubview(insert)
        
        let remove = UIButton(type: .roundedRect)
        remove.frame = CGRect(x: 20, y: 500, width: 280, height: 30)
        remove.setTitle("删除视图", for: .normal)
        remove.addTarget(self, action: #selector(removeArrangedSubView(_:)), for: .touchUpInside)
        self.view.addSubview(remove)
    }
    @objc func setCustomSpacing(_ button:UIButton){
        let view = stackView.arrangedSubviews[1]
        stackView.setCustomSpacing(30, after: view)
        
    }
    @objc func insertArrangedSubView(_ button:UIButton){
        let view = UIView()
        view.backgroundColor = UIColor.green
        stackView.insertArrangedSubview(view, at: 2)
        
    }
    @objc func removeArrangedSubView(_ button:UIButton){
        let view = stackView.arrangedSubviews[1]
        stackView.removeArrangedSubview(view)
        
    }

}

