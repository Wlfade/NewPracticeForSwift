import UIKit

//1.使用数组定义一组数据
let array = ["why",18,1.88] as [Any]
array[0]
array[1]

//2.使用数组定义一组字典
let dict = ["name":"why","age":18,"height":180]as [String : Any]
dict["name"]
dict["age"]

//3.使用元组
//3.1>元组基本的写法
let info = ("why",18,1.88)
info.0
info.1

let info0 = (array,dict,1.88)
info0.0
info0.1

//3.2>可以给元组每一个元素起别名(常见)
let info1 = (name : "why", abe:18 ,ccc:1.88)
info1.name
info1.1
info1.ccc

//3.3> 元组中元素的别名，就是元素的名称
let (name,age,height) = ("haha","18",1.99)
name
age
height



