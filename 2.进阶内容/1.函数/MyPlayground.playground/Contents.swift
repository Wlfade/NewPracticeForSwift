import UIKit

var str = "Hello, playground"
//函数定义的格式如下：
//func 函数名(参数变量:类型,参数变量:类型...)->返回类型
//{
//    程序语句
//    程序语句
//    return 结果
//}

//定义一个无参数并且无返回类型的函数
func sayHelloSwift()
{
    print("Hello,Swift")
}

sayHelloSwift()

//定义拥有两个参数和返回值的函数
func sum(number1:Int,number2:Int)->Int
{
    return number1+number2
}
let result = sum(number1: 1, number2: 2)
print(result)

let result2 = sum(number1: 2, number2: 2)
print(result2)


func getDistance(enemyPosition:CGPoint, turretPosition:CGPoint = CGPoint(x: 100, y: 100))->CGFloat{
    let xDis = turretPosition.x - enemyPosition.x
    let yDis = turretPosition.y - enemyPosition.y
    return sqrt(xDis*xDis + yDis*yDis)
}

//在getDistance 方法的参数声明区域，当添加第二个参数时，在参数类型的右侧添加一个等号，并在等号后面添加默认参数值。当调用该方法时，只需要传入第一个参数即可
let enemyPosition = CGPoint(x: 200, y: 200)
let distance = getDistance(enemyPosition: enemyPosition)
print(distance)

//如果游戏场景中拥有多个炮塔，你依然可以使用getDistance 函数，只需在调用该函数时填写第二个参数即可
let anotherTurrentPosition = CGPoint(x: 100, y: 400)
let anotherDistance = getDistance(enemyPosition: enemyPosition, turretPosition: anotherTurrentPosition)
print(anotherDistance)

//设置可变的函数参数变量 在定义函数时，如果不确定参数的数量，可通过在变量类型后面加(...)定义可变参数。一个函数最多能有一个可变参数，切必须是函数表中最后一个。为避免在调用函数时产生歧义，一个函数如果有一个或多个参数，并且还有个可变参数，一定要把可变参数放在最后
func getAverage(numbers:Double...)->Double
{
    if numbers.count == 0 {
        return 0.0
    }
    var total:Double = 0
    for number in numbers {
        total += number
    }
    return total/Double(numbers.count)
}

let average = getAverage(numbers: 1,2,3,4,5,6,7,8,9,10)
print(average)


/*函数作为参数和返回类型*/

//函数作为参数
func getSmaller(number1:Int,number2:Int)->Int
{
    return ((number1<number2) ? number1:number2)
}

func getBigger(number1:Int,number2:Int)->Int
{
    return ((number1>number2) ? number1:number2)
}

func printMathResult(mathFunction:(Int,Int)->Int,num1:Int,num2:Int)->Int
{
    let resultInt = mathFunction(num1,num2)

    print("The result is:\(resultInt)")

    return resultInt
}

printMathResult(mathFunction: getSmaller, num1: 1, num2: 2)
printMathResult(mathFunction: getBigger, num1: 2, num2: 5)

//函数作为返回类型
func chooseFunction(needBigger:Bool)->(Int,Int)->Int
{
    return needBigger ? getBigger : getSmaller
}
let function = chooseFunction(needBigger: true)
print(function(2,4))

//元组作为函数的返回类型实现多个返回值
func getUserInfo(userid:String)->(userName:String,userLevel:Int,photoPath:String)
{
    let userName = "John"
    let userLevel = 3
    let photoPath = "http://www.ckklketang.com/userPhoto/323sfa4.png"
    return (userName,userLevel,photoPath)
}
let message = getUserInfo(userid: "1234")
print(message.userName)
print(message.1)
print(message.2)

/*使用函数类型*/
//使用函数类型和使用其他类型一样。比如可以定义一个常量或变量，其类型就是函数，而且h可以给这个函数赋值

//定义两数之和的函数
func getTotal(num1:Int,num2:Int)->Int
{
    return num1 + num2
}

let newFuncton: (Int,Int)->Int = getTotal
let result3 = newFuncton(1,1)
print(result3)

let anotherFunction = getTotal
let result4:Int = anotherFunction(3,4)
print(result4)

//如果使用无参数并且无返回值的函数类型呢？首先定义一个此类型的函数
func printHellowSwift()
{
    print("Hello,swift")
}
let anotherGreation:()->() = printHellowSwift
anotherGreation()

//函数的输入输出参数 想要一个函数可以修改参数的值，并且这些修改在函数结束调用后依然存在，就可以将参数定义为输入输出参数，这可以通过在参数类型的前面添加inout关键字来实现
func swap(prevNumber:inout Double,nextNumber:inout Double)
{
    let tempNumber = prevNumber
    prevNumber = nextNumber
    nextNumber = tempNumber
}

//在调用swap函数时，需要注意它的两个参数必须为变量类型，并且系统会自动在变量的左侧添加&符号
var preNum = 2
var nexNum = 1
swap(&preNum, &nexNum)
print(preNum)
print(nexNum)

//函数的嵌套
func chooseNumber(needBigger:Bool,number1:Int,number2:Int){
    func getSmaller()
    {
        print((number1<number2) ? number1:number2)
    }

    func getBigger()
    {
        print((number1>number2) ? number1:number2)
    }
    needBigger ? getBigger : getSmaller
}
 chooseNumber(needBigger: true, number1: 6, number2: 3)

//函数的递归用法
func recursion(n:Int)->Int
{
    if n<=1 {
        return 1
    }
    else
    {
        return recursion(n: n-1)+recursion(n: n-2)
    }

}
print(recursion(n: 5))

//常用的内置函数
//abs 绝对值函数
print(abs(-1))

//min最小值函数
print(min(8, 2, 4))

//max最大值函数
print(max(5, 4, 7 , 9))

//{$0%3 == 0} 为筛选闭包，这里忽略了参数名，而使用默认参数$0,返回类型隐式推断为bool类型
for i in (0...10).filter({$0%3 == 0}){
    print(i)
}
//map函数 用于将数组中的每个元素通过指定的方法进行转换
for i in (1...4).map({$0 * 3}) {
    print(i)
}

//reduce 函数 把数组元素组合计算为一个值，比如讲数组中的每个数字进行相加，从而获得数组中所有元素之和
let result5 = (1...4).reduce(0, +)
print(result5)

let result6 = (1...4).reduce(1, *)
print(result6)
