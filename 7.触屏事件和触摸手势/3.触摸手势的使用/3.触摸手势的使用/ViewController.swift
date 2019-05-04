//
//  ViewController.swift
//  3.触摸手势的使用
//
//  Created by 王玲峰 on 5/4/19.
//  Copyright © 2019 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var testView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         UIPanGestureRecognizer  拖动手势
         UIPinGestureRecognizer  捏合手势
         UIRotationGestureRecognizer  旋转手势
         UITapGestureRecognizer  点击手势
         UILongPressGestureRecognizer  长按手势
         UISwipeGestureRecognizer  轻扫手势
         */
        /*
         UIGestureRecognizerState 手势状态的枚举类型
         possible   手势识别器尚未监测到手势，但是可能正在对一个触摸事件进行分析
         began  手势识别器已经识别到一个手势
         changed    手势识别器识别到一个持续类型手势的变化
         ended  手势识别器识别到一个持续类型手势的结束
         cancelled  手势识别器识别到一个持续类型手势被取消
         failed 手势识别器获得一个触摸序列，但是无法将它识别为手势
         recognized 手势识别器获得一个触摸序列，并且将它识别为手势
         */
        
        let rect = CGRect(x: 0, y: 80, width: 320, height: 320)
        self.testView = UIView(frame: rect)
        
        self.testView.backgroundColor = UIColor.red
        
        testView.isUserInteractionEnabled = true
        self.view .addSubview(self.testView)
        
//        addSingleTap(view: testView)
        
//        addDoubleTap(view: testView)
        
        addLongPress(view: testView)
        
    }
    
    //对一个视图添加点击手势
    @objc func addSingleTap(view :UIView){
        
        let guesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.singleTap))
        
        view.addGestureRecognizer(guesture)
        
    }
    //对一个视图添加双击手势
    @objc func addDoubleTap(view :UIView){
        
        let guesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.singleTap))
        guesture.numberOfTapsRequired = 2 //识别进行两次点击的手势
        guesture.numberOfTouchesRequired = 1 //识别一根手指进行两次点击的手势
        view.addGestureRecognizer(guesture)
        
    }
    
    @objc func addLongPress(view :UIView){
        
        let guesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress(_:)))
        guesture.minimumPressDuration = 1.0 //当手指按下并持续一秒之后，才会被识别为长按手势
        guesture.allowableMovement = 20 //手指处于按下状态时，若手势移动的距离超过20点，则视为非长按手势
        view.addGestureRecognizer(guesture)
        
    }



    //点击响应
    @objc func singleTap(){
        let view = testView
        view?.backgroundColor = UIColor.yellow
        
    }
    //长按响应
    @objc func longPress(_ gusture:UILongPressGestureRecognizer){
        if gusture.state == UIGestureRecognizer.State.began {
            let view = testView
            view?.backgroundColor = UIColor.yellow
        }
        else if gusture.state == UIGestureRecognizer.State.ended{
            let view = testView
            view?.backgroundColor = UIColor.blue
        }
        
    }



}

