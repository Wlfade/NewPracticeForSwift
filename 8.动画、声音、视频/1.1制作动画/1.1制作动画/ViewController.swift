import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        
        let buttonNext = UIButton(type: UIButton.ButtonType.system)
        buttonNext.frame = CGRect(x: 50, y: 500, width: 220, height: 44)
        buttonNext.backgroundColor = UIColor.black
        buttonNext.setTitle("Next", for: UIControl.State.normal)
        buttonNext.addTarget(self, action: #selector(ViewController.nextVC), for: UIControl.Event.touchUpInside)
        self.view.addSubview(buttonNext)

    }
    
    @objc func playAnimation()
    {
        UIView.beginAnimations(nil, context: nil) //开启一个动画，但并不会马上执行 直到调用commitAnimations 执行的是介于 两个类方法之间的操作 在commitAnimation方法被执行后，才会生成并播放动画
        UIView.setAnimationCurve(UIView.AnimationCurve.easeOut) //设置动画速度变化曲线
        /*
         easeInOut : 动画播放速度在开始时较慢，然后逐渐加快，在完成之前再次变慢
         easeIn : 动画播放速度在开始时较慢，然后逐渐加快
         easeOut : 动画播放速度在开始时较块，然后逐渐减速
         linear : 动画播放速度始终保持不变
         */
        UIView.setAnimationDuration(5) //动画持续时间 默认0.2 秒
        UIView.setAnimationBeginsFromCurrentState(true) //是否从当前状态开始播放
        
        //修改视图外观属性实现相应动画效果
//        let view = self.view.viewWithTag(1)
//        view?.frame = CGRect(x: 40, y: 40, width: 0, height: 0)
//        view?.backgroundColor = UIColor.blue
//        view?.alpha = 0
        
        //iOS 系统提供的一些特殊动画
        let view = self.view.viewWithTag(1)
        //参数1： 过渡效果
        //参数2： 需要应用过渡效果的视图
        //参数3： 是否为视图在过渡前后的画面进行缓存,以提高过渡效果的帧数
        /*
         flipFromLeft: 视图从左向右滑入屏幕
         flipFromRight: 视图从右向左滑入屏幕
         curlUp: 视图从下向上卷曲的翻页效果
         curlDown: 视图从上向下卷曲的翻页效果
         none: 视图无过渡效果
         */
//        UIView.setAnimationTransition(UIView.AnimationTransition.curlUp, for: view!, cache: true)
        UIView.setAnimationTransition(UIView.AnimationTransition.curlUp, for: view!, cache: false)

        
        UIView.setAnimationDelegate(self) //设置代理用于检测动画的播放状态
        UIView.setAnimationDidStop(#selector(ViewController.animationStop)) //回调动画结束方法？
        UIView.commitAnimations()
    }
    
    @objc func animationStop()
    {
        print("animation stop")
        self.view.viewWithTag(1)?.removeFromSuperview() //动画结束后移除视图
        
    }
    
    
    @objc func nextVC(){
//        BlockViewController
        let nextVC = BlockViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

