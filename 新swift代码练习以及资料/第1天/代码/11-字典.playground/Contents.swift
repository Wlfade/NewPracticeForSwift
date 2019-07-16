import UIKit

//1.定义字典
//1> 定义不可变字典 使用let修饰
let dict1 : [String : NSObject] = [String : NSObject]()

let dict2 = ["name":"haha","age":"19"]
let dict21 : [String : String] = ["name":"haha","age":"19"]
let dict22 = ["name":"haha","age":"19"] as [String : String]


let dict3 = ["name":"lala","age":18] as [String : Any]
let dict31 = ["name":"lala","age":18] as [String: AnyObject]
let dict32 : [String : Any] = ["name":"lala","age":18]
let dict33 : Dictionary<String,Any> = ["name":"lala","age":18]



//2> 定义可变字典 使用var修饰
//AnyObject:一般指定了类型 NSObject : 一般用于创建对象
//var dictM = Dictionary<String , NSObject>()
var dictM = Dictionary<String , AnyObject>()


//var dictM1 = [String : NSObject]()
var dictM1 = [String : AnyObject]()


//var dictM2 : [String : NSObject] = [String : NSObject]()
var dictM2 : [String : AnyObject] = [String : NSObject]()



//2.对可变字典的基本操作（增删改查）
//2.1 添加元素
dictM["height"] = 1.8 as AnyObject
dictM["age"] = 18 as AnyObject
dictM["weight"] = 70 as AnyObject
dictM["name"] = "kaka" as AnyObject
dictM

//2.2删除元素
dictM.removeValue(forKey: "weight")

//2.3 修改元素
//区别：如果字典中已经有了对应的Key,那么会直接修改原来的key中保存的value
//如果字典中没有对应的Key,那么添加对应的Key / value
dictM["name"] = "tata" as AnyObject
dictM

//2.4获取某个元素
dictM["age"]

//3.遍历字典
//3.1 遍历字典中所有的Key
for key in dictM.keys {
    print(key)
}

//3.2 遍历字典中所有的value
for value in dictM.values {
    print(value)
}

//3.3 遍历字典中所有的key,value
for (key,value) in dictM {
    print(key)
    print(value)
}

//3.4 字典中是否有某个键值
dictM.keys.contains("name")

//4.合并字典
//即使类型一致也不能相加进行合并
var dictQ : [String : Any]  = ["name":"why","age":18]
let dictW : [String : Any] = ["height":"why","weight":180]
//let resutlDict = dictQ + dictW

for(key,value) in dictW{
    dictQ[key] = value
}
dictQ
