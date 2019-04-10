import UIKit

var str = "Hello, playground"

/* 类的创建 */
//class 类名
//{
//    属性列表
//    方法列表
//}

class Car
{
    var brand : String = ""
    var speend : Int = 0
}
//类的属性要进行初始化，所以这里设置brand属性的默认值为空的字符串而speed属性的默认值为0
//可以在定义类的时候给他置顶自定义的init初始化方法
class newCar
{
    var brand : String
    var speed : Int
    //添加了一个init方法，在该f初始化方法中，对brand和speed属性都进行了初始化操作
    init() {
        self.brand = ""
        self.speed = 0
    }

    //还可以添加实例方法
    func drive(){
        print("Driving \(brand) at \(speed) speed >>>")
    }
}

let car = newCar()
car.brand = "Audi"
car.speed = 80
car.drive()

//如果觉得实例中的初始化方法比价烦琐，可以为 Car 类继续添加一个包含参数的初始化方法

class BestCar
{
    var brand : String
    var speed : Int

    init() {
        self.brand = ""
        self.speed = 0
    }

    init(brand : String,speed : Int) {
        self.brand = brand
        self.speed = speed
    }
    func drive(){
         print("Driving \(brand) at \(speed) speed >>>")
    }
}
let newBestCar = BestCar (brand: "Audi", speed: 90)
newBestCar.drive()

/*类属性的 set 和 get 方法*/
// set 设置的意思 get 是获取的意思 顾名思义 这两个方法是对数据进行设置和获取用的


class Hero //定义了一个名为Hero(英雄)的类
{
    var damage : Int = 10
    var level : Int
    {
        get{
            return self.damage / 10
        }
        set(newLevel){
            self.damage = newLevel * 10
        }
    }
}
//其中，damage的值可以根据Hero对象的level属性计算得出。所以为Level属性添加了set和get方法，当对level属性进行set操作时，将返回damage属性的值被10除之后的结果。当对level属性执行set操作时，同时设置damage的值为level属性值的10倍
let hero = Hero()
print(hero.damage)
print(hero.level)
//由于hero实例的damage属性的初始值为10，因此当执行第二行代码的hero.level语句是，调用了level属性的get方法，从而通过将damage的值除以10得出的值为1.

hero.level = 10
hero.level
print(hero.damage)

/*类属性的 willSet 和 didSet 方法 */
//通过给属性添加 willSet 和 didSet 方法可以给类添加属性观察者
// willSet 方法在设置属性值之前被调用
// didSet 方法则在设置属性值之后被调用
class newHero
{
    var damage : Int = 10
    var level : Int = 1
    {
        willSet {
            print("即将为level设置新值：\(newValue).")
        }
        didSet{
            //oldValue 未level 属性此次设置前的jiuzhi
            if level > oldValue {
                print("升级了")
            }else{
                print("未升级")
            }
        }

    }
}

let hero1  =  newHero()
hero1.level = 2
hero1.level = 2

/* 类的静态方法 */
class MathTool
{
    class func sum(number1:Int,number2:Int)->Int{
        return number1+number2
    }
    class func multiply(number1:Int,number2:Int)->Int{
        return number1*number2
    }
}
//静态方法的使用可以通过
print(MathTool.sum(number1: 2, number2: 2))
print(MathTool.multiply(number1: 3, number2: 3))
//使用静态方法省去了对类进行实例化的步骤，通过类名即可快速调用该方法。因此，如果一个方法不依赖具体实例，建议将它定义成静态方法

/* 类的析构 */
//都是使用的自动计数（ARC）来实现对实例的内存管理 swift会自动释放不再需要的实例以释放资源。所以当你的实例被释放时，不需要手动清理
class FileManage
{
    func loadFile(){
        print("Load file from the resorce")
    }
    func writeFile(){
        print("Write the data into the file")
    }
    deinit {
        print("Delete the fileManager")
    }
}

var fileManager : FileManage? = FileManage()
fileManager!.loadFile()
fileManager!.writeFile()
fileManager = nil

/* 类的继承 */
//类的继承特性可以使一个类获取另一个类的方法和属性。在swift 中，类可以调用和访问父类的方法、属性和下标脚本。也可以重写它们
/*
 类的继承具有以下优点:
 继承是在一些通用类的基础上构造、建立和扩充新类的最有效的手段
 继承简化了人们对事物的认识和描述，能清晰体现相关类之间的层次结构关系
 继承提供了软件复用功能。若乙类继承甲类，那么建立乙类时，只需要再描述与甲类不同的属性和方法即可。这种做法能够减小代码的冗余度，增加程序的重用性
 继承通过增强一致性来减少模块间的接口和界面，大大增强了程序的易维护性
 */
//在使用继承功能之前，首先创建一个基类，即没有继承其他类的类
class Animal
{
    final var age : Int = 0
    func say(){
        print("I'm an animal")
    }
}
//定义了一个名为Dog的子类，父类是Animal.子类和父类的名称之间需要用冒号隔开
class Dog: Animal {
    //在子类中可以添加父类没有的属性和方法，这里添加了一个名为name的属性，并建立了该属性的init构造方法
    var name : String
    init(name:String) {
        self.name = name
    }
    //重写了父类的say 方法，在重写一个父类的方法时，你需要在重写的方法名称前面加上override关键字，不使用override可能会引起意外的重写，从而导致意想不到的行为，而且任何没哟使用override的重写都会在编译时被诊断为错误
    override func say() {
        print("I'm a dog, my name is \(name)")
    }
}

var dog : Dog = Dog(name: "OuO")
dog.say()
//由于对父类的say 方法进行了 重写，因此在子类中调用say方法时，输出的是子类中定义的内容，而不是在父类的say方法中定义的内容
/*
如果不希望父类的属性、下标、或方法被重写，可以在属性或方法名字的前面添加final修饰符，如：final var 、final func 、final class func 、final subscript
 当在子类中尝试重写final方法、属性或下标脚本时，都将被报告为编译时错误
 */


/*
 类的延迟加载属性lazy
 延迟加载属性是指当第一次被调用的时候，才会对其进行初始化操作的属性

 */
//定义了一个名为Avarta的类，这个类将作为User类的头像avarta属性的类型。
//Avarta类的photo属性用来加载置顶位置的图片
class Avarta
{
//    var photo : UIImage = UIImage(named: "Picl")!
    var photo : String = "图片"

}

class User
{
    var name:String = "John"
    lazy var avarta : Avarta = Avarta() // lazy标识，这就意味着该属性在被调用时才会进行初始化操作
}

let user = User()
print(user.avarta.photo)

/* 类的引用特征 */
//在swift 环境中，元组、枚举、和结构体属于值类型，而类则属于引用类型
/*
 值类型最基本的特征就是复制在赋值、初始化和传递参数过程中的数据，并为了和这个数据创建一个崭新和独立的实例
 和值类型不同，引用类型的实例在被赋予到一个变量或常量，或者作为参数被传递到一个函数时，其操作的并不是类实例的拷贝，而是已存在的实力本身。
 */

class newAnimal
{
    var name:String = "Tiger"
}
//这里创建了一个名为newAnimal的类，它仅有一个属性name，其默认值为tiger.
let tiger = newAnimal()
print(tiger.name)

let lion = tiger //tiger实例赋予lion常量，因为类是引用类型，所以tiger和lion实际上引用的是相同的Animal实例。换句话说，他们只是同一个实例的两种叫法

lion.name = "Lion"
print(lion.name)
print(tiger.name)

/* 类型检查 是一种检查实力类型的方式，同时也是让实例作为它的父类或者子类的一种方式*/
class Creature
{
    var name : String
    init(name : String) {
        self.name = name
    }
}

class newDog : Creature
{
    var master : String
    init(name:String,master:String) {
        self.master = master
        super.init(name: name)
    }
}

class Bird : Creature
{
    var food : String
    init(name : String , food : String) {
        self.food = food
        super.init(name: name)
    }
}

//创建一个Creature类型的数组，该数组包含来自newDog和Bird两个类的共5个实例
let creatures : [Creature] =
    [
        newDog(name: "Nono", master: "John"),
        Bird(name: "Max", food: "Bugs"),
        newDog(name: "Bailey", master: "Smith"),
        Bird(name: "Charlie", food: "Spider"),
        newDog(name: "Toby", master: "Bill")
    ]

//
var dogAmount = 0
var birdAmount = 0
for item in creatures {
    //通过 is 操作符判断 item 的类型
    if item is newDog {
        dogAmount += 1
    }
    else if item is Bird{
        birdAmount += 1
    }
}
print(dogAmount)
print(birdAmount)

//if-let 和 as 语句 将 item 转换为对应的类型，
for item in creatures {
    if let dog = item as? newDog {
        print("Dog:\(dog.name),belongs to \(dog.master)")
    }
    else if let bird = item as? Bird{
        print("Bird:\(bird.name),loves \(bird.food)")
    }
}

/* Any和AnyObject */
//swift 为不确定的类型提供了两种特殊类型别名：AnyObject和Any。其中，AnyObject可以代表任何class 类型实例，Any 则可表示任何类型，除了方法类型（function types）
//由于Any 和 AnyObject 的使用方法相似，
var anythings = [Any]()
anythings.append(8)
anythings.append(3.1415)
anythings.append("hello")
anythings.append((3.0,5.0))

//通过 let-as 语句将数组中的每个元素都转换为对应的数组类型
for item in anythings {
    switch item {
    case let someInt as Int:
        print("An integer value of \(someInt)")
    case let someDouble as Double:
        print("An doubule value of \(someDouble)")
    case let someString as String:
        print("An string value of \(someString)")
    case let (x,y) as (Double,Double):
        print("An (x,y) point of \(x),\(y)")
    default:
        print("Something else")
    }
}

/* 拓展 */
//swift 中的扩展功能（Extension）可以动态的给类增加功能
//现有的类、结构体、或枚举类型的方法可以在扩展的帮助下进行添加。类型的功能可以使用扩展加入，但重写的功能不能使用拓展
/*
 1.添加计算型属性和计算静态属性
 2.定义实例方法和类型方法
 3.提供新的构造器
 4.定义下标
 5.定义和使用新的嵌套类型
 6.使一个已有类型符合某个接口
 */

extension Int
{
    var double : Int
    {
        return self * 2
    }
    var triple : Int
    {
        return self * 3
    }
    var fourfold : Int
    {
        return self * 4
    }
    var half : Double
    {
        return Double(self)/2.0
    }
}

print(2.double)
print(2.triple)
print(2.fourfold)
print(3.half)

//拓展类型的方法
//使用拓展可以很方便的向已有类型添加新的实例方法和类型方法
//定义一个指示平面左边的结构体
struct XYPoint
{
    var x:Double = 0.0
    var y = 0.0
}

//使用extension 关键字 对 XYPoint 结构体进行方法的拓展
extension XYPoint
{
    //添加了一个名为distance的方法，该方法包含一个XYPoint 类型的参数而且返回一个double类型的浮点结果
    func distance(point : XYPoint) -> Double {
        let disX = point.x - self.x
        let disY = point.y - self.y

        return sqrt(disX * disX + disY * disY)
    }
}
let StartPoint = XYPoint(x: 0, y: 0)
let endPoint = XYPoint(x: 100, y: 100)
print(endPoint.distance(point: StartPoint))

/* 协议 是为方法、属性等定义一套规范，没有具体的实现 */

//协议的定义
/*
 protocol 协议名称
 {
    //协议内容
 }
 */
protocol Walking
{
    func walk()
}

//协议的继承 协议能够继承一到多个其他协议，多个协议之间需要用逗号“，”分割
protocol Fighting : Walking
{
    var damage : Int{get set}
    func fight()
}
//定义了一个名为Fighting的协议，该协议继承自 Walking协议，并且添加了一个协议属性damage 和 一个协议方法fight
//在类中实现协议
protocol Eating
{
    func eat()
}

class newnewAnimal:Fighting,Eating
{
    var damage: Int = 10
    func walk() {
        print("I'm walking gracefully!")
    }
    func fight() {
        print("I'm fighting hard!")
    }
    func eat() {
        print("I'm eating hard!")
    }
}
//创建一个animal实例，并调用实现的协议方法
var animale = newnewAnimal()
print(animale.damage)
animale.walk()
animale.fight()
animale.eat()

//问号 ： 变量可能为空
//感叹号 : 变量一定不为空
/*
 swift语言不会自动给变量初始值，所以当使用未经初始化的变量时，系统就会报错
 */
//Optional 枚举类型的定义如下
var password:String?
password = "123456"
print(password?.count)
print(password!.count)
