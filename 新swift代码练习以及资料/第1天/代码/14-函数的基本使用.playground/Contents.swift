import UIKit

//1.没有参数没有返回值的函数
func about() -> Void{
    print("iphone6s plus")
}
// 调用函数
about()

// 简单写法
// 如果没有返回值，Void可以写成
func about1() -> (){
    print("iphone6s plus")
}

//如果没有返回值，后面的内容可以都不写
func about2(){
    print("iphone6s plus")
}
about2()


//2.没有参数有返回值的函数
func readMessage() -> String{
    return "吃饭了吗"
}
var str = readMessage()
print(str)

//3.有参数没有返回值的函数
func callPhone(phoneNum : String){
    print("打电话给\(phoneNum)")
}
callPhone(phoneNum: "+86 110")

//4.有参数有返回值的函数
func sum(num1 : Int,num2:Int) -> Int{
    return num1 + num2
}
var result = sum(num1: 20,num2:30)
print(result)


//num1和a 是外部参数的名称
func ride(num num1 : Int, a num2 : Int, b num3 : Int)-> Int {
    return num1 * num2 * num3
}
var result1 = ride(num:20,a:4,b:5)
