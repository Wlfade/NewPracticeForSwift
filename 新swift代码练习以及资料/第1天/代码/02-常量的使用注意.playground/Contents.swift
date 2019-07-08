import UIKit

//注意：声明为常量不可以修改的意思是指针不可以再指向其他对象，但是可以通过指针拿到对象，修改其中的属性
//view:UIVIew = [[UIView alloc]init];
//swift 对象中不需要*
var view : UIView = UIView()
view = UIView()

let view1 : UIView = UIView(frame:CGRect(x:0,y:0,width:100,height:100))
view1.backgroundColor = UIColor.red
view1.alpha = 0.5
view.isHidden = true

//枚举类型的用法：类型，枚举的值
let btn : UIButton = UIButton(type:UIButton.ButtonType.custom)
btn.backgroundColor = UIColor.blue
btn.setTitle("按钮",for:UIControl.State.normal)
btn.frame = CGRect(x:0,y:0,width:100,height:100)
view1.addSubview(btn)
