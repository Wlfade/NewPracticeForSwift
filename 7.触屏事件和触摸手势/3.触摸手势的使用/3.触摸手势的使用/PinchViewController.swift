//
//  PinchViewController.swift
//  3.触摸手势的使用
//
//  Created by 王玲峰 on 5/4/19.
//  Copyright © 2019 王玲峰. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {
    var testView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 0, y: 80, width: 320, height: 600)
        self.testView = UIImageView(frame: rect)
        
        self.testView.backgroundColor = UIColor.red
        
        
        let image = UIImage(named: "me")
        
        testView.isUserInteractionEnabled = true
        testView.image = image
        
        self.view .addSubview(self.testView)
        
        let guesture = UIPinchGestureRecognizer(target: self, action: #selector(PinchViewController.pinchImage(_:)))
        
        testView.addGestureRecognizer(guesture)
    }
    @objc func pinchImage(_ recognizer:UIPinchGestureRecognizer)
    {
        recognizer.view?.transform = (recognizer.view?.transform.scaledBy(x: recognizer.scale, y: recognizer.scale))!
        recognizer.scale = 1;
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
