import UIKit

var str = "Hello, playground"

//枚举语法
enum UserLevel
{
    case 总经理
    case 区域经理
    case 主管
    case 业务员
}
//如果枚举成员比较少，也可以将枚举成员放置在一行之中
enum UserLevelNew
{
    case 总经理,区域经理,主管,业务员,其他人
}

print(UserLevel.业务员)

var userLevel = UserLevel.主管
userLevel = .区域经理

let newUserLevel = UserLevelNew.业务员
switch newUserLevel {
case UserLevelNew.总经理:
    print("总经理进入系统后，进入系统配置界面")
case UserLevelNew.区域经理:
    print("区域经理进入系统后，进入区域报表界面")
case UserLevelNew.主管:
    print("主管进入系统后，进入业务员任务签发界面")
case UserLevelNew.业务员:
    print("业务员进入系统后，进入报备客户界面")
default:
    print("其他人进入系统后，进入报备客户界面")
}
//使用default 语句处理用户使用非业务员账号登录系统的情况


enum Gender : UInt8
{
    case Male = 1
    case Famale = 2
    case Unknow = 3

}
//swift 会自动为没有分配原始值的成员分配对应的原始值。简化版本
enum newGender : UInt8
{
    case Male = 1,Famale,Unknow
}

//用rawValue 属性来访问一个枚举成员的原始值
print(newGender.Famale.rawValue)

let gender1 = newGender(rawValue: 2)
print(gender1 as Any)


//给枚举添加方法
enum oldGender : UInt8
{
    case Male,Female,Unknow
    func description()
    {
        switch self {
        case .Male:
            print("Hi,man")
        case .Female:
            print("Hi,lady")
        case .Unknow:
            print("Hi,....")
        }
    }
}
//为oldGender 枚举添加了一个名为description的方法，在该方法体内，通过switch语句遍历枚举的值，并相应地打印输出不同的内容
//调用枚举的方法
let oldgender = oldGender.Female
oldgender.description()


/*结构体*/
//结构体的定义格式和枚举极为相似，它是以struct关键字来进行定义的，并且也将结构体的内容放置在一对大括号之中
struct 结构体名称{
    //此处放置结构体的内容
}

struct Animal{
    let zooName:String = "Beijing Zoo"
    var name : String
}

let tiger = Animal(name: "Tiger")
print(tiger.name)

var animal = tiger
animal.name = "ElePhant"
print(animal.name)

let firstAnimal = Animal(name: "Tiger") //创建了一个Animal结构体的实体，并初始化name属性为Tiger
var secondAnimal = firstAnimal; //firstAnimal被复制了一份并将复制的实例赋予secondAnimal变量产生了两个不同的实例
secondAnimal.name = "Elephant"
print(firstAnimal.name)
print(secondAnimal.name)

//给结构体添加方法
struct newAnimal
{
    let zooName : String = "Beijing Zoo"
    var name : String
    func say(){
        print("Hi,I'm \(name)")
    }
}

let lion = newAnimal(name: "Lion")
lion.say()

//结构体下标
struct MySubscript
{
    var number : Int
    subscript(n:Int)->Int
    {
        return number * n
    }

}
let subScript = MySubscript(number: 4)
print(subScript[3]) //使用下标的方法获得number属性值乘以3之后的乘积

