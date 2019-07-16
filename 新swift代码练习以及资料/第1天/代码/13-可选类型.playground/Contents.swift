import UIKit
//swift 中有规定：对象中的任意属性在创建对象时，都必须有明确的初始化值
//class Student : NSObject{
//    let name : String = ""
//
//}

// 1.定义可选类型
// 1> 方式一：常规方式（不常用）
//var name : Optional<String> = nil

// 2> 方式二：语法糖（常用）
var name : String? = nil

//2.给可选类型赋值
name = "why"

//3.取出可选类型中的值
// 可选类型 + ！: 强制解包
//print(name!)

//4.注意强制解包是非常危险操作，如果可选类型为nil,强制解包系统会崩溃
//建议：在强制解包之前，先对可选类型进行判断，判断是否为nil
if name != nil{
    print(name!)
}

//5.可选绑定
// 1> 判断name是否有值，如果没有值，则不执行{}
// 2> 如果name有值，系统会自动将name进行解包，并且将解包后的结果，赋值给tempName

//写法一：不常用
if let tempName = name {
    print(tempName)
}
//写法二：常用
if let name = name {
    print(name)
}


//可选类型的应用场景
//通过一个字符串创建一个NSURL对象
//let url : Optional<NSURL> = NSURL(string: "http://baidu.com")
let url : NSURL? = NSURL(string: "http://baidu.com")

print(url!)

//根据url创建NSURLRequest对象
if url != nil {
    let request = NSURLRequest(url: url! as URL)
    print(request)
}

if let url = url {
    let request = NSURLRequest(url: url as URL)
    print(request)
}

