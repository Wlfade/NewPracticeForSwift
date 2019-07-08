import UIKit

var age = 18



func online(age : Int,isHaveId:Bool,isHaveMoney:Bool){
//  1.判断年龄
    guard age >= 18 else{
        print("回家去")
        return
    }
//  2.是否带有身份证
    guard isHaveId == true else{
        print("回家拿身份证")
        return
    }
//  3.是否带有钱
    guard isHaveMoney == true else{
        print("回家拿钱")
        return
    }
//    4.语句块
    print("可以上网")
}

online(age: age,isHaveId: true,isHaveMoney: true)

