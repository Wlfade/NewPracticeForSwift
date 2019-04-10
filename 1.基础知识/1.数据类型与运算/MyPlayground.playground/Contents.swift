import UIKit

let name = "jerry"
let age = "30"

let info = "我的名字是\(name)，今年\(age)岁了。"

let infor:String = "我的名字"

print("我的名字是\(name)，今年\(age)岁了")
print(info)
dump(info)
debugPrint(info)


// 循环练习
var total = 0
for i in 1...100 {
    total = total + i;
}


//创建一个View 练习
let view = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
view.backgroundColor = UIColor.red
view.layer.cornerRadius = 5
view.layer.borderWidth = 1
view.layer.borderColor = UIColor.yellow.cgColor
view

/*1.布尔类型*/
let isFriend = false
let isEnemy = true
if isEnemy {
    print("是敌人")
}else{
    debugPrint("非敌人")
}
if isFriend {
    print("是朋友")
}else{
    dump("非朋友")
}

/*2.整数类型及实例属性*/
let age1 = 12
let score = 123000
let studentAmount = 72

//UInt8 代表8位的无符号整数
let min_value_of_uint8 = UInt8.min //Uint8的最小值
let maxValueOfUint8 = UInt8.max //Uint8的最大值
let min_value_of_uint = UInt.min //Uint的最小值
let maxValueOfUint = UInt.max //Uint的最大值
let minValueOfInt = Int.min //int的最小值
let maxValueOfInt = Int.max //int的最大值


var intNumber = 30
intNumber.distance(to:40) //获取两个数据的差值
intNumber.advanced(by:20) //将整数增加20

/*2.整数类型及实例属性*/
let num  = 9.8
let floatNum = 3.5
let doubuleNum = 10.6
let floatInfinity = Float.infinity
let doubleInfinity = Double.infinity
var number1 = -9.8
number1.advanced(by: 20) //将浮点数据加上20
number1.distance(to: 23.3) //获得两个数的差值
number1.isFinite //是否有限
number1.isInfinite //是否无限
number1.isZero //是否为零
number1.isLess(than: -9.0) //是否小于-9.0

/*3.字符和字符串*/
let charaacterA:Character = "A"
let sun = "\u{2600}"
let snow = "\u{2744}"


let sunAndSnow = "\u{2600}\u{2744}"
var emptyString1 = ""
var emptySring2 = String()
var emptyString3 = ""
emptyString3.isEmpty

/*字符串的引入 拼接*/
let 数学 = 95
let 语文 = 90

let 成绩 = "你的数学成绩\(数学)，语文成绩\(语文)"

let firstName = "Jerry"
let secondName = "Lee"
let FullName = "你的firstName是"+firstName+",secondName是"+secondName+""
let FullName1 = firstName+""+"Lee"

var hello = "Hello swift"
let ganTanHao:Character = "!"
hello.append(ganTanHao)
hello.insert(ganTanHao, at: hello.endIndex)
hello.append("Great Language")



/* 字符串中的转义符*/
let message = "Hi\0Jerry,\n\"Good moring.\""

/*字符串的比较*/
let passWordFromUser = "123456"
let passWordFromDb = "123456"
if passWordFromDb == passWordFromUser {
    print("你可以登录系统了。")
}

let userType1 = "京东的金牌商家"
let userType2 = "淘宝的金牌买家"
print(userType1.hasPrefix("京东"))
print(userType2.hasSuffix("买家"))

/*字符串的大小写转换*/
let hello1 = "Hello,swift"
print(hello1.uppercased())
print(hello1.lowercased())
print(hello1.capitalized)

/*字符串的截取和替换*/
var hello2 = "Hello,Swift! "
hello2.substring(from: hello2.index(hello2.startIndex, offsetBy: 7))
hello2.substring(to: hello2.index(hello2.endIndex, offsetBy: -8))
hello2.replacingOccurrences(of: "Hello", with: "Hi")
hello2.remove(at: hello2.index(hello2.startIndex, offsetBy: 5))
print(hello2)

/*遍历字符串中的字符*/
var num1 = 0
let phoneNum = "15011123451"
for temp in phoneNum {
    if temp == "1" {
        num1 += 1
    }
}
print(num1)

/*元组类型*/
let person = ("John",33)
print(person)

let http404Error = (404,"Not Found")
let http200Status = (statusCode:200,description:"OK")

//从一个元组中单独取出每个数据有两种方式，第一种方式是使用下标
print("errorCode = \(http404Error.0)")
//第二种方式
let(errorCode,errorMessage) = http404Error;
print("errorCode = \(errorCode)")

//如果之前是按照键值对创建元组，可以按照方位属性的形式来获取相关的值
let person1 = (name:"mike",age:30)
print("person1的名字\(person1.name),年龄：\(person1.age)")


/*一元、二元、和三元运算符*/
//一元减号和加号
let one = 1
let minusOne = -one
let plusOne = +one
let anotherOne = -minusOne

//一元逻辑非运算符
let isHero = false
let playerType = !isHero

//二元运算符
3+2
3-2
3*2
3/2
//余数运算符
5%2
-5%2

//三元条件运算符
let scores = 66
let result = (scores >= 60) ? "通过考核" : "未通过考核"

/*比较运算符*/
2>1
2<1
2>=1
2<=1
2==1


let workingAge = 18
if workingAge != 15
{
    print("享受15天年假")
}

//拥有同样值数量的元组也可以进行比较
(2,3)>(1,3)
("class1",98)>("class2",54)
(7,"Sunday")==(7,"Sunday")








