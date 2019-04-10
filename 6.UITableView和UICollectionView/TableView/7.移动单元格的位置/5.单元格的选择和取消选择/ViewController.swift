//
//  ViewController.swift
//  5.单元格的选择和取消选择
//
//  Created by 王玲峰 on 2019/3/9.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    static let identifier = "reusedCell"

    var diablo3Level = ["普通难度","困难模式","高手","大师","地狱"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenRect = UIScreen.main.bounds
        
        let tableViewRect = CGRect(x: 0, y: 20, width: screenRect.size.width, height: screenRect.size.height - 20)
        let tableView = UITableView(frame: tableViewRect)
        tableView.delegate = self;
        tableView.dataSource = self
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier:ViewController.identifier)
        
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
//        tableView.isEditing = true
        //调用setEditing 方法UITableView视图进入编辑模式，根据设置的编辑样式显示对应的编辑图标或重新排序图标
        tableView.setEditing(true, animated: true)
        self.view.addSubview(tableView)
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diablo3Level.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ViewController.identifier, for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = diablo3Level[(indexPath as NSIndexPath).row]
        
        cell.selectionStyle = .none
        
        
        
        return cell
        
    }

    
    // MARK: - 单元格选中后 取消选中调用
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType =  .disclosureIndicator
    }
    // MARK: -tableView 进入编辑模式后调用次代理方法
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        //隐藏编辑按钮
        return UITableViewCell.EditingStyle.none

    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        //设置单元格可以被拖动
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let fromRow = (sourceIndexPath as NSIndexPath).row
        let toRow = (destinationIndexPath as NSIndexPath).row
        
        let item = diablo3Level[fromRow]
        
        diablo3Level.remove(at: fromRow)
        diablo3Level.insert(item, at: toRow)
        
    }
    
    
    


}

