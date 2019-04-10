//
//  ViewController.swift
//  1.UIAlertController.alert
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
        button.addTarget(self, action: #selector(ViewController.showAlert), for: .touchUpInside)
        button.backgroundColor = UIColor.orange
        self.view.addSubview(button)
        
    }
    @objc func showAlert(){
        let alert = UIAlertController(title: "Information", message: "Are you a Student", preferredStyle: .alert)
        let yes = UIAlertAction(title: "Yes", style: .default) { (alerts:UIAlertAction)->Void in print("Yes I'm a student")
            
        }
        let no = UIAlertAction(title: "NO", style: .default) { (alerts:UIAlertAction)->Void in print("Yes I'm not a student")
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(yes)
        alert.addAction(no)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
        
    }


}

