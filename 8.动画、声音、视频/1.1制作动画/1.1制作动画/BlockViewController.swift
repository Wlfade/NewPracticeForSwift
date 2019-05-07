//
//  BlockViewController.swift
//  1.1制作动画
//
//  Created by 王玲峰 on 5/7/19.
//  Copyright © 2019 王玲峰. All rights reserved.
//

import UIKit

class BlockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let rect = CGRect(x: 40, y: 100, width: 240, height: 240)
        let view = UIView(frame: rect)
        view.backgroundColor = UIColor.red
        view.tag = 1
        self.view.addSubview(view)
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 50, y: 400, width: 220, height: 44)
        button.backgroundColor = UIColor.black
        button.setTitle("play", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(ViewController.playAnimation), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
        
        
    }
    
    @objc func playAnimation()
    {
        UIView.animate(withDuration: 5, delay: 1, options: [.curveEaseOut], animations: {
            let view = self.view.viewWithTag(1)
            view?.frame = CGRect(x: 40, y: 40, width: 0, height: 0)
            view?.backgroundColor = UIColor.blue
            view?.alpha = 0
        }) { (value :Bool) in
            print("animation stop")
            self.view.viewWithTag(1)?.removeFromSuperview() //动画结束后移除视图
        }
    }
    
    @objc func animationStop()
    {
        print("animation stop")
        self.view.viewWithTag(1)?.removeFromSuperview() //动画结束后移除视图
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
