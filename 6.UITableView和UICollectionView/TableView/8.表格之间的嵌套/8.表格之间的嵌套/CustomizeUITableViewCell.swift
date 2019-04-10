//
//  CustomizeUITableViewCell.swift
//  8.表格之间的嵌套
//
//  Created by 王玲峰 on 2019/3/10.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class CustomizeUITableViewCell: UITableViewCell,UITableViewDelegate,UITableViewDataSource {
    
    struct stringWH {
        var stringH : CGFloat
        var stringW : CGFloat
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print("按钮被点击")
        // Configure the view for the selected state
    }
    
    var tableView : UITableView!
    
    var comments : [String] = []
    
    static let identifier = "reuseCell"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        tableView = UITableView(frame: CGRect(x: 0, y: 20, width: 280, height: 90))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: CustomizeUITableViewCell.identifier)
        
        self.contentView.addSubview(tableView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: -UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomizeUITableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = comments[(indexPath as NSIndexPath).row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 12)
        cell.textLabel?.textColor = UIColor.gray
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    //MARK: -UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let subComments = comments[(indexPath as NSIndexPath).row]
        
        
        /// 获得绘制该字符串所需的矩形区域的大小
        let size = subComments.boundingRect(with: CGSize(), options: NSStringDrawingOptions.usesFontLeading, attributes: nil, context: nil)
        let cellHeight = size.height*size.width / 170
        
        if cellHeight<30 {
            return 30
        }else{
            return cellHeight
        }
    }
    
    func setCommentsForTable(_comments:[String]){
        self.comments = _comments
        var tableViewH : CGFloat = 0
        
        
        for comment in self.comments {
            let size = comment.boundingRect(with: CGSize(), options: NSStringDrawingOptions.usesFontLeading, attributes: nil, context: nil)
            
            tableViewH += size.height*size.width / 170
            
            print(self.getTheStringH(comment: comment).stringH)
            
            print(self.makeTheStringH(comment: comment).stringH)
            
        }
        tableView.frame = CGRect(x: 20, y: 0, width: 280, height: tableViewH + 50)
        tableView.reloadData()
    }
    func getMyHeight() -> CGFloat {
        return tableView.bounds.size.height
    }
    
    //MARK: -两个计算高度的方法
    //返回的是一个结构体
    func getTheStringH(comment:String) -> stringWH {
        let size = comment.boundingRect(with: CGSize(), options: NSStringDrawingOptions.usesFontLeading, attributes: nil, context: nil)
        
        let H:(CGFloat) = size.height
        let W:(CGFloat) = size.width
        
        let countH:(CGFloat) = H*W / 170
        
        let result:(stringWH) = stringWH(stringH: countH, stringW: W)
        return (result)

    }
    
    //返回的是一个元组
    func makeTheStringH(comment:String) -> (stringH:CGFloat,stringW:CGFloat) {
         let size = comment.boundingRect(with: CGSize(), options: NSStringDrawingOptions.usesFontLeading, attributes: nil, context: nil)
        
        let H:(CGFloat) = size.height
        let W:(CGFloat) = size.width
        
        let countH:(CGFloat) = H*W / 170
        
        return (countH,W)
    }
}
