//
//  FirstViewController.swift
//  1.UINavigationController
//
//  Created by 单车 on 2019/2/21.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var viewControllString : (NSString) = ""


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.setToolbarHidden(false, animated: false)
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = viewControllString as String
        self.view.backgroundColor = UIColor.brown
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(FirstViewController.nextPageAction(_:)))
        self.navigationItem.prompt = "prompt"
    }
    @objc func nextPageAction(_ title:NSString){
        let secondVC = SecondViewController()

        self.navigationController?.pushViewController(secondVC, animated: true)
    }



}
