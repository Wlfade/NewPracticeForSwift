import UIKit

//1.内部参数和外部参数，可以在标识符前给该参数添加一个别名
func sum(a num1:Int,b num2:Int)->Int{
    return num1+num2
}
//sum(num1: 30, num2: 40)
sum(a: 1, b: 1)


func sum1( num1:Int, num2:Int)->Int{
    return num1+num2
}

//sum1(num1: 20, num2: 30)

//2.Swift中的默认参数
func makeCoffee(coffeeName:String = "雀巢")->String{
    return"制作了一杯\(coffeeName)咖啡"
}
makeCoffee(coffeeName: "拿铁")
makeCoffee(coffeeName: "卡布奇诺")
makeCoffee()

//3.可变参数
func sum(num:Int...)->Int{
    var result = 0
    
    for n in num{
        result += n
    }
    
    return result
}
sum(num: 18,20,30,40,50)

//4.注意指针类型
var m = 20
var n = 30

func swapNum ( m : inout Int , n : inout Int){
    let tempNum = m
    m = n
    n = tempNum
}
swapNum(m: &m, n: &n)
print("m:\(m),n:\(n)")

//5.函数的嵌套使用（了解）
func test(){
    func demo(){
        print("demo")
    }
    print("test")
    demo()
}
test()
