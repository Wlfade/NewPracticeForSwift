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

    let diablo3Level = ["普通难度","困难模式","高手","大师","地狱"]
    
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
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType =  .disclosureIndicator
    }


}

