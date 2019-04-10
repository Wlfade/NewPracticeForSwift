//
//  ViewController.swift
//  1.UIDatePicker
//
//  Created by 王玲峰 on 2019/2/24.
//  Copyright © 2019年 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let datePicker = UIDatePicker()
        datePicker.center = CGPoint(x: 160, y: 200)
        datePicker.tag = 1
        datePicker.datePickerMode = .dateAndTime //.dateAndTime .date .time .countDownTimer
        datePicker.minimumDate = Date()
        datePicker.maximumDate = Date(timeInterval: 3*24*60*60, since: Date())
        self.view.addSubview(datePicker)
        
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 360, width: 280, height: 44)
        button.backgroundColor = UIColor.orange
        button.setTitle("Get date", for: .normal)
        button.addTarget(self, action: #selector(getDateTime(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    @objc func getDateTime(_ button:UIButton){
        let datePicker = self.view.viewWithTag(1) as! UIDatePicker
        let date = datePicker.date
        
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "yyyy-MM-dd HH:mm"
        let dateAndTime = dateFormate.string(from: date)
        print(dateAndTime)
    
    }
}

