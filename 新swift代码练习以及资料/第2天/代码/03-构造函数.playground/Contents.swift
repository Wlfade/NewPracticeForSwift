import UIKit

//原因

//在swift3中，编译器自动推断@objc，换句话说，它自动添加@objc
//在swift4中，编译器不再自动推断，你必须显式添加@objc
class Person:NSObject{
    @objc var name : String?
    @objc var age : Int = 0
    
    override init() {
        print("---")
    }
    init(name:String,age:Int){
        self.name = name
        self.age = age
    }
    
//    init(dict:[String:AnyObject]){
//        let tempName = dict["name"]
//        // tempName是一个AnyObject？，转成String？
//        //as? 最终转成的类型是一个可选类型
//        name = tempName as? String
//
//        /*
//        let tempAge = dict["age"]
//        let tempAge1 = tempAge as? Int
//        if tempAge1 != nil {
//            age = tempAge1!
//        }
//         */
//        if let tempAge = dict["age"] as? Int {
//            age = tempAge
//        }
//
//    }
    
    init(dict:[String : AnyObject]){
        super.init()
//        setValuesForKeys(dict)
//        print(dict)
        self.setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
         print(key)
    }
}

let p = Person()
let p1 = Person(name: "shy",age: 19)
print(p1.name)
print(p1.age)

let dict : [String : AnyObject] = ["name":"why" as AnyObject,"age":180 as AnyObject]

let p2 = Person(dict: dict)

print(p2.age)
print(p2.name)
