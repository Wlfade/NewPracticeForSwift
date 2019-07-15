import UIKit

//1.定义数组
//1> 定义不可变数组：使用let修饰标识符定义出来的数组就是不可变数组
let array1 = ["1","2","3","1","2","3","1","2","3","1","2","3"]
//let array2 : [String] = ["1","2","3"]
//let array3 : Array<String> = ["1","2","3"]

//2> 定义可变数组：使用var修饰标识符定义出来的数组就是可变数组
//var arrayM = Array<String>()
var arrayN = [String]()
var arrayO = [Int]()


//2.对可变数组的基本操作
//增加1个元素
arrayN.append("5")
arrayN.append("6")
arrayN.append("7")

//添加一个区间
arrayO.append(contentsOf:1...10)

//删除
arrayN .remove(at: 0)
arrayN

//修改
arrayN[0] = "100"
arrayN
//取出
arrayN[1]

//3.数组的遍历
//3.1 根据下标值进行遍历
for i in 0..<array1.count {
    print(array1[i])
}
//3.2直接遍历数组中的元素
for name in array1 {
    print(name)
}

//3.3遍历数组中的前两个元素
for i in 0..<2 {
    print(array1[i])
}

for name in array1[0..<2] {
    print(name)
}
//4.数组的合并
//注意：相同类型的数组才能进行合并，不同类型不能相加合并
let resultArr = arrayN + array1
resultArr
