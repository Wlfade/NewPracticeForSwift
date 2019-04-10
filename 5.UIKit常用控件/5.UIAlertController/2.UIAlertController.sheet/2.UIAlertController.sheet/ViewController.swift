//
//  ViewController.swift
//  2.UIAlertController.sheet
//
//  Created by 王玲峰 on 2019/2/24.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 20, y: 120, width: 280, height: 44)
        button.setTitle("question", for: .normal)
        button.addTarget(self, action: #selector(ViewController.showSheet), for: .touchUpInside)
        button.backgroundColor = UIColor.orange
        self.view.addSubview(button)
    }
    @objc func showSheet(){
        let actionSheet = UIAlertController(title: "Information", message: "What's your favorite", preferredStyle: .actionSheet)
        let fishing = UIAlertAction(title: "Fishing", style: .default) { (alerts:UIAlertAction)->Void in print("I like Fishing")
            
        }
        let hunting = UIAlertAction(title: "Hunting", style: .destructive) { (alerts:UIAlertAction)->Void in print("I like hunting")
            
        }
        //cancel 永远出现在表单列表的底部
        let noting = UIAlertAction(title: "Noting", style: .cancel) { (alerts:UIAlertAction)->Void in print("A life of Nonsense")
            
        }
        
        actionSheet.addAction(fishing)
        actionSheet.addAction(hunting)
        actionSheet.addAction(noting)
        
        self.present(actionSheet, animated: true, completion: {
            print("What's your favorite")
        })
        
    }



}

