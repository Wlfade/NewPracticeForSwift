//
//  ViewController.swift
//  1.UITableVie创建
//
//  Created by 王玲峰 on 2019/3/8.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

/*
 UITableViewDataSource
 
 tableView(_:cellForRowAt:) 初始化和复用指定索引位置的单元格（必须实现）
 tableView(_:numberOfRowsInSection:) 设置某一章节中的单元格数量，默认值为1（必须实现）
 numberOfSection(in:) 设置表格中章节的数量
 tableView(_:titleForHeaderInSection:) 设置表格中指定章节的标题文字，若此代理方法返回值为nil,则章节不显示标题
 tableView(_:canEditRowAt:) 设置表格中指定索引位置的单元格是否可以被编辑，可以编辑的单元格会显示插入和删除图标
 tableView(_:commit:forRowAt:) 当完成插入和删除操作是调用此方法
 tableView(_:canMoveRowAt:) 设置指定索引路径的单元格是否可以通过拖动的方式改变其位置
 tableView(_:moveRowAt:to:) 当单元格从一个位置拖动至另一处时，调用此方法
 */

/*
 UITableViewDelegate
 
 tableView(_:heightForRowAt:) 设置指定索引位置上的单元格的高度。每当表格需要显示时，都会调用此方法，用来设置表格中每一行单元格的高度
 tableView(_:willDisplay:forRowAt:) 当指定索引位置上的单元格即将显示时，调用此方法。此方法使委托对象有机会在单元格显示之前重写其状态属性，如选择背景颜色等
 tableView(_:didSelectRowAt:) 当用户点击选择指定索引位置上的单元格时，调用此方法。可以在此方法中设置单元格选中后的状态，比如添加一个被选中的标志图片
 tableView(_:didDeselectRowAt:) 当用户点击一个已经被选中的单元格时，调用此方法
 tableView(_:viewForHeaderInSection:) 此方法中设置表视图指定章节的头部区域视图，可以返回一个UIImageView、UILabel对象或自定义UIView对象作为章节的头部
 tableView(_:viewForFooterInSection:) 此方法中设置表格视图指定章节的尾部区域视图
 */

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenRect = UIScreen.main.bounds;
        
        let tableRect = CGRect(x: 0, y: 20, width: screenRect.size.width, height: screenRect.size.height - 20)
        
        let tableView = UITableView(frame: tableRect)
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
        self.view.addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row % 2 == 0 {
//            return 104
//        }
        if (indexPath as NSIndexPath).row % 2 == 0 {
            return 104
        }

        return 40
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifiet = "reusedCell" //定义字符串常量，作为单元格类型
        
        //从单元格对象池中获取指定类型并且可以重复使用的单元格
        //如果是自定义的单元格一定要把类型确定好 否则 无法赋值
        var cell:CustomizeUITableViewCell? = tableView.dequeueReusableCell(withIdentifier: identifiet) as? CustomizeUITableViewCell
        //
        if (cell == nil) {
            //若从对象池中获得的可用单元格为nil,则从内存中创建一个新的单元格 UITableViewCell对象
            cell = CustomizeUITableViewCell(style: .default, reuseIdentifier: identifiet)
        }
//        cell?.textLabel?.text = "命运负责洗牌，玩牌的是我们自己"
        cell?.title?.text = "客户名字"
        return cell!
        
    }
}

