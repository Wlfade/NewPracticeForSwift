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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if (cell?.accessoryType ==  UITableViewCell.AccessoryType.none){
            cell?.accessoryType =  UITableViewCell.AccessoryType.checkmark
        }else{
            cell?.accessoryType =  UITableViewCell.AccessoryType.none
        }
        
    }
    
    // MARK: - 单元格选中后 取消选中调用
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType =  .disclosureIndicator
    }
    // MARK: -tableView 进入编辑模式后调用次代理方法
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        //添加模式
//        return UITableViewCell.EditingStyle.insert
        
        /*
         UITableViewCell.EditingStyle.none 不显示任何编辑图标，为默认样式
         UITableViewCell.EditingStyle.delete 显示删除图标，点击此图标删除一行单元格
         UITableViewCell.EditingStyle.insert 显示插入图标，点击此图标插入一行单元格

         */
        //删除模式
        return UITableViewCell.EditingStyle.delete

    }
    // MARK: -tableView 点击了编辑按钮后调用的方法
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.insert {
//            let newIndexPath = NSIndexPath(row: 0, section: 0)
//            diablo3Level.insert("新增模式", at: indexPath.row)
//            diablo3Level.insert("new模式", at: newIndexPath.row)

//            tableView.insertRows(at: [indexPath,newIndexPath as IndexPath], with: UITableView.RowAnimation.right)
            
            diablo3Level.insert("新增模式", at: indexPath.row)
            tableView.insertRows(at: [indexPath], with: UITableView.RowAnimation.none)
            
            /*
             animation
             
             fade : 淡入淡出
             right : 右侧划入 右侧划出
             left : 左侧划入 左侧划出
             top : 顶部划入 顶部划出
             bottom : 底部划入 底部划出
             none : 采取默认动画 相当于 middle
             middle : 尽量使新旧单元格居中显示在曾经或将要停留的位置
             automatic : 自动选择合适的动画方式
             */

        }
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            diablo3Level.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }

    }
    
    
    


}

