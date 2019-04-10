//
//  ViewController.swift
//  1.UITableVie创建
//
//  Created by 王玲峰 on 2019/3/8.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

/*
 单元格样式枚举类型
 
 UITableViewCellStyle.default 一个左侧的可选视图和一个左对齐的标签对象
 
 UITableViewCellStyle.value1 一个左侧的可选视图和一个左对齐的标签对象,在单元格右侧还有个灰色、右对齐的标签对象

 UITableViewCellStyle.value2 一个左侧的右对齐的标签对象和一个右侧的左对齐的标签对象

 UITableViewCellStyle.subtitle 一个左侧的可选视图和一个左对齐的标签对象和在这个标签对象下方的字体较小的标签对象

 */
import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenRect = UIScreen.main.bounds;
        
        let tableRect = CGRect(x: 0, y: 20, width: screenRect.size.width, height: screenRect.size.height - 20)
        
        let tableView = UITableView(frame: tableRect)
        
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifiet = "reusedCell" //定义字符串常量，作为单元格类型
        var cell = tableView.dequeueReusableCell(withIdentifier: identifiet)//从单元格对象池中获取指定类型并且可以重复使用的单元格
        if (cell == nil) {
            //若从对象池中获得的可用单元格为nil,则从内存中创建一个新的单元格 UITableViewCell对象
            cell = UITableViewCell(style: .default, reuseIdentifier: identifiet)
        }
        cell?.textLabel?.text = "命运负责洗牌，玩牌的是我们自己"
        return cell!
        
    }
}

