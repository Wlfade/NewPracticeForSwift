import UIKit
//无父类
class Person{
    var age:Int = 0
}

let p = Person()
p.age = 20

//继承自NSObject
/*
 1.类的定义
 2.创建类对应的对象
 3.给类的属性赋值
    1> 直接赋值
    2> 通过KVC赋值
 4.可以重写setValue(_ value: Any?, forUndefinedKey key: String) {},那么字典中没有的字段可以在类中没有对应的属性
 5.override ： 重写，如果写的某一个方法是父类的方法进行的重写，那么方法前加上override
 */
class Dog : NSObject{
    var age:Int = 0
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}

let d = Dog()
d.age = 1
//可以使用KVC 赋值
d.setValuesForKeys(["age":2,"name":"KK"])
d
