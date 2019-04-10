//
//  CustomizeUITableViewCell.swift
//  1.UITableVie创建
//
//  Created by 王玲峰 on 2019/3/8.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class CustomizeUITableViewCell: UITableViewCell {

    var thumbnail : UIImageView!
    var title : UILabel!
    var detail : UIButton!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.thumbnail = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        self.thumbnail?.image = UIImage(named: "user")
        
        self.contentView.addSubview(self.thumbnail)
        
        let title = UILabel(frame: CGRect(x: 80, y: 0, width: 120, height: 40))
        title.text = "自定义单元格"
        self.title = title
        self.contentView.addSubview(title)
        
        let detail = UIButton(frame: CGRect(x: 240, y: 8, width: 60, height: 24))
        detail.setTitle("详情", for: .normal)
        detail.backgroundColor = UIColor.yellow
        detail.setTitleColor(UIColor.gray, for: .normal)
        detail.setTitleColor(UIColor.red, for: .selected)
        detail.addTarget(self, action: #selector(self.tapped(_:)), for: .touchUpInside)
        self.detail = detail
        self.contentView.addSubview(detail)
    }
    
    @objc func tapped(_ sender:UIButton){
//        sender.setTitle("The Button is Tapped", for: .normal)
        sender.isSelected = !sender.isSelected
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
