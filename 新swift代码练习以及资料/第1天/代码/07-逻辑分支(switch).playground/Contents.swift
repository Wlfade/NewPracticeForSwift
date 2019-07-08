import UIKit
//1.switch基本用法
//- switch后可以不跟()
//- case后可以不跟break(默认会有break)
let sex = 0
switch sex {
case 0:
    print("男的")
case 1:
    print("女的")
default:
    print("其他")
}

//2.基本用法的补充
//2.1> 如果系统某一个case中产生case穿透，可以在case结束后跟上fallthrough
//2.2> case后面可以判断多个条件，多个条件以，分割
switch sex {
case 0,1:
    print("正常人")
default:
    print("其他")
}

//3.swift中的switch 的特殊用法
//3.1 switch 可以判断浮点型

let a = 3.14
switch a {
case 3.14:
    print("π")
default:
    print("非π")
}

//3.2 switch 可以判断字符串
let m = 20
let n = 30
let opration = "+"
var result = 0
switch opration {
case "+":
    result = (m+n)
case "-":
    result = (m-n)
case "*":
    result = (m*n)
case "/":
    result = (m/n)
default:
    print("非法操作符")
}

//3.2 switch 支持区间判断
let score = 88
switch score {
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80..<90:
    print("良好")
case 90..<100:
    print("优秀")
default:
    print("满分")
}



