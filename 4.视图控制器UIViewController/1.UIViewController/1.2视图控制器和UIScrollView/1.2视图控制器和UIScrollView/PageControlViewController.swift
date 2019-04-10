//
//  PageControlViewController.swift
//  1.2视图控制器和UIScrollView
//
//  Created by 单车 on 2019/2/15.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

//创建一个名为PageControlViewController 的视图控制器类，并让该类遵循UIScrollViewDelegate协议，从而可以检测滚动视图的状态
class PageControlViewController: UIViewController,UIScrollViewDelegate
{

    var scrollView = UIScrollView() //创建一个UIScrollView滚动视图对象
    var pageControl = UIPageControl() //UIPageControl 页面控制对象
    var isPageControlUsed = false //用来判断是否使用了pageControl对象。如果没有使用pageControl对象，而是使用手指滑动scrollView 进行内容的滚动查看，则在查看内容是可实时更新pageControl对象的状态

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue

        //获取当前屏幕属性以及对应的宽度和高度信息
        var screenFrame = UIScreen.main.bounds
        let screenWidth = screenFrame.size.width
        let screenHeight = screenFrame.size.height

        //对scrollView 滚动视图对象进行一些自定义设置
        scrollView.frame = screenFrame //设置scrollView 的显示区域与屏幕尺寸相同
        scrollView.isPagingEnabled = true //以一整页为单位进行翻页操作
        scrollView.contentSize = CGSize(width: screenWidth * 2, height: screenHeight) //设置内容尺寸
        scrollView.backgroundColor = UIColor.black //背景为黑色
        scrollView.delegate = self


        let pcHeight : CGFloat = 50.0
        let pcRect = CGRect(x: 0, y: screenHeight - pcHeight, width: screenWidth, height: pcHeight)
        pageControl.frame = pcRect
        pageControl.numberOfPages = 2 //设置为2页
        pageControl.currentPage = 0
        pageControl.backgroundColor = UIColor.gray
        pageControl.addTarget(self, action: #selector(PageControlViewController.pageControlDidChaged(_:)), for: .valueChanged) //添加手指点击pageControl事件，当用户点击pageControl时，将执行相应的动作

        //实例化FirstViewController对象，并设置screenFrame的基点在X轴的位置为0
        let firstController = FirstViewController()
        screenFrame.origin.x = 0
        firstController.view.frame = screenFrame

        //实例化SecondViewController对象，并设置screenFrame的基点在X轴的位置为X，即第二页
        let secondController = SecondViewController()
        screenFrame.origin.x = screenFrame.size.width
        secondController.view.frame = screenFrame

        //将firstViewController 和 secondViewController 的根视图都添加到scrollView 滚动视图中
        scrollView.addSubview(firstController.view)
        scrollView.addSubview(secondController.view)

        //将scrollView 和 pageControl 对象都添加到当前视图控制器的根视图中
        self.view.addSubview(scrollView)
        self.view.addSubview(pageControl)
    }
    //创建一个名为 pageControlDidChanged的方法，当pageControl对象被点击时，就调用该方法
    @objc func pageControlDidChaged(_ sender:AnyObject){
        //获取pageControl对象当前的页码以及scrollView的frame属性
        let crtPage = (CGFloat)(pageControl.currentPage)
        var frame = scrollView.frame
        //计算scrollView应该滚动到的目标区域
        frame.origin.x = frame.size.width * crtPage
        frame.origin.y = 0

        //执行scrollRectToVisible方法将scrollView 滚动到目标区域
        scrollView.scrollRectToVisible(frame, animated: true)

        //设置isPageControlUsed 的值为true ,即通过用户点击pageControl对象进行scrollView的页面滚动
        isPageControlUsed = true
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //判断是否通过用户的手指进行scrollView的滑动
        if !isPageControlUsed {
            let pageWidth = scrollView.frame.size.width
            //当scrollView 在水平方向上被拖动超过屏幕宽一半距离时，计算pageControl对应的页码
            let page = floor((scrollView.contentOffset.x - pageWidth / 2)/pageWidth) + 1

            pageControl.currentPage = Int(page)


        }
    }

    //该方法在scrollView减速至停止滚动时被调用，在该方法中设置 isPageControlUsed 的值为 false,恢复该属性的默认状态
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        isPageControlUsed = false
    }




}
