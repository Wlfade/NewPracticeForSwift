//
//  ViewController.swift
//  1.UILabel标签控件
//
//  Created by 单车 on 2019/2/22.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 20, y: 100, width: 280, height: 80))
        label.text = "Hello , Xcode and Swift"
        
        label.font = UIFont(name: "Arial", size: 24)
        
        label.textAlignment = NSTextAlignment.right
        
        label.textColor = UIColor.purple
        
        label.shadowColor = UIColor.red
        
        label.backgroundColor = UIColor.blue
        
        label.shadowOffset = CGSize(width: 2, height: 2)
        
        self.view.addSubview(label)
        
        
        //长文本标签的换行
        let label2 = UILabel(frame: CGRect(x: 20, y: 200, width: 280, height: 80))
        label2.text = "Hello , Xcode and Swift, think of you. love jdfkjkfjekjglsje kjfiejlsjeigj jdijeljegjlkdjei gjiejlgiegnid jidjlgeji "
        
        label2.font = UIFont(name: "Arial", size: 14)
        
        label2.textAlignment = NSTextAlignment.left
        
        label2.textColor = UIColor.purple
        
        label2.backgroundColor = UIColor.yellow
        
        label2.numberOfLines = 0
        
        label2.lineBreakMode = NSLineBreakMode.byTruncatingTail
        
        self.view.addSubview(label2)
        
        /*
         byWordWrapping : 默认状态。当单词本身不适合一行显示时，换行将发生在单词的边界上
         byCharWrapping : 换行发生在达到标签边界的第一个字符之前
         byClipping : 超过文本容器边界的文本行的将不会被绘制
         byTruncatingHead : 在行首进行剪切，并以...表示被剪切的文字，如"...xyz"
         byTruncatingTail : 在行尾进行剪切，并以...表示被剪切的文字，如“abc...”
         byTruncatingMiddle : 在行中进行剪切，并以...表示被剪切的文字，如“abc...yz”
         */
        
        //标签文字样式的自定义
        let attributedText = NSMutableAttributedString(string: "coolketang.com")
        //        attributedText.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: 48), range: NSMakeRange(0, 4))
        
        let attributes = [
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20),
            NSAttributedString.Key.backgroundColor:UIColor.red,
            NSAttributedString.Key.strikethroughStyle:NSUnderlineStyle.single.rawValue
            ]as [NSAttributedString.Key : Any]
        
        attributedText.addAttributes(attributes, range: NSMakeRange(0, 4))
        
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.purple, range: NSMakeRange(4, 7))
        attributedText.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.orange, range: NSMakeRange(11, 3))
        let rect = CGRect(x: 20, y: 300, width: 280, height: 60)
        let label4 = UILabel(frame: rect)
        label4.attributedText = attributedText
        self.view.addSubview(label4)
    }
}
