//
//  ViewController.swift
//  4.给表格添加章节和索引
//
//  Created by 王玲峰 on 2019/3/9.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

/*
 索引表格项目需要用到的代理方法
 
 numnberOfSectionInTableView(_:) 设置表格视图中章节的数量，默认值为1，如果需要添加过个章节，只需返回一个更大的整数即可
 tableView(_:numberOfRowsInSection:) 设置指定章节中单元格行的数量
 tableVIew(_:titleForHeaderInSection:) 设置章节的标题文字，返回结果为字符串。若返回结果为nil,则章节没有标题
 sectionIndexTitlesForTableView(_:) 设置在表格右侧显示的索引序列的内容，返回结果为一个字符串数组
 tableView(_:cellForRowAtIndexPath:) 初始化和复用单元格
 */
import UIKit

class ViewController: UIViewController , UITableViewDataSource{
    
    //初始化一个字典对象作为表格对象的数据源
    var countries : Dictionary<String,[String]> =
        [
            "A":["Afghanistan","Albania","Algeria","Angola","Australia"],
            "B":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "C":["Cfghanistan","Clbania","Clgeria","Cngola","Custralia"],
            "D":["Dfghanistan","Dlbania","Dlgeria","Dngola","Dustralia"],
            "E":["Efghanistan","Elbania","Elgeria","Engola","Eustralia"],
            "F":["Ffghanistan","Flbania","Flgeria","Fngola","Fustralia"],
            "G":["Gfghanistan","Glbania","Glgeria","Gngola","Gustralia"],
            "H":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "I":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "J":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "K":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "L":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "M":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "N":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "O":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "P":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "Q":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "R":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "S":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "T":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "U":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "V":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "W":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "X":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "Y":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"],
            "Z":["Bfghanistan","Blbania","Blgeria","Bngola","Bustralia"]
        ]
    var keys : [String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //定义一个名为keys的数组对象，用来存放按升序后的
        keys = Array(countries.keys).sorted()
        
        let screenRect = UIScreen.main.bounds
        
        let tableRect = CGRect(x: 0, y: 20, width: screenRect.size.width, height: screenRect.size.height - 20)
        
        let tableView = UITableView(frame: tableRect)
        
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return keys.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        let subCountries = countries[keys[section]]
        
        return((subCountries?.count)!)
        
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return keys
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return keys[section]
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "reusedCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
        }
        let subCountries = countries[keys[(indexPath as NSIndexPath).section]]
        cell?.textLabel?.text = subCountries![(indexPath as NSIndexPath).row]
        return cell!
    }
}

