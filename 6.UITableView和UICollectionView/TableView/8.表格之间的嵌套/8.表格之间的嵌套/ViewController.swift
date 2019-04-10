//
//  ViewController.swift
//  8.表格之间的嵌套
//
//  Created by 王玲峰 on 2019/3/10.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    var aritcles = ["微软有哪些[黑历史]?","苹果有哪些黑科技","把地理和的交付课"]
    var comments = [
        ["1微软hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh",
         "1苹果888888888888888888888888888888888888888888888"],
        ["2微软777777777777777777777777777777777777777777777",
         "2苹果"],
        ["3微软iifyfyfhdt","3苹果jkjkliiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"]
    ]
    
    static let identifierResue = "reuseCell"

    static let identifierCustom = "customizeCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenRect = UIScreen.main.bounds
        
        let tableViewRect = CGRect(x: 0, y: 20, width: screenRect.size.width, height: screenRect.size.height - 20)

        
        
        let tableView = UITableView(frame: tableViewRect)
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        
        //注册原始单元格
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: ViewController.identifierResue)
        //注册自定义单元格
        tableView.register(CustomizeUITableViewCell.classForCoder(), forCellReuseIdentifier: ViewController.identifierCustom)

        self.view.addSubview(tableView)

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aritcles.count * 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath).row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ViewController.identifierResue, for: indexPath) as UITableViewCell
            cell.textLabel?.text = aritcles[indexPath.row / 2]
            cell.textLabel?.font = UIFont.systemFont(ofSize: 16)
            cell.textLabel?.textColor = UIColor.lightGray
            cell.backgroundColor = UIColor.black
            
            return cell
        }else{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: ViewController.identifierCustom, for: indexPath) as! CustomizeUITableViewCell
//            cell.textLabel?.text = aritcles[indexPath.row / 2]
//            cell.textLabel?.font = UIFont.systemFont(ofSize: 16)
//            cell.textLabel?.textColor = UIColor.lightGray
//            cell.backgroundColor = UIColor.black
            
            let subComment = comments[indexPath.row/2]
            
            cell2.setCommentsForTable(_comments: subComment)
            
            return cell2
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath).row % 2 == 0  {
            return 40
        }else{
            let subComment = comments[indexPath.row/2]
            var tableViewH : CGFloat = 0

            for comment in subComment {
                let size = comment.boundingRect(with: CGSize(), options: NSStringDrawingOptions.usesFontLeading, attributes: nil, context: nil)
                
                tableViewH += size.height*size.width / 170
            }
            return tableViewH + 50
        }
    }
}

