//
//  ViewController.swift
//  09-Swift中的tableView
//
//  Created by 单车 on 2019/7/19.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- 懒加载的属性（分组注释）
    /// tableView 的属性(提示注释)
    lazy var tableView = UITableView()
    
    //MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
}
//MARK:- 设置UI
extension ViewController{
    func setUI() {
        //0.将tableView添加到控制器的View中
        view.addSubview(tableView)
        //1.设置tableView的frame
        tableView.frame = view.bounds
        //2.设置数据源
        tableView.dataSource = self
        //3.设置代理
        tableView.delegate = self
    }
}

//MARK:- tableView 代理方法
//extension类似OC的category，也是只能扩充方法，能不扩充属性
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    ///单元格数量
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    ///创建cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //1.创建cell
        let cellId = "CellID"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellId)
        }
        //2.给cell 赋值
        cell?.textLabel?.text = "第\(indexPath.row)个单元格"
        //3.返回cell
        return cell!
    }
    ///点击方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("第\(indexPath.row)个单元格被点击")
    }
}
