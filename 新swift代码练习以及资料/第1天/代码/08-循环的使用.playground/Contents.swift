import UIKit

//传统写法C-style for statement has been removed in Swift 3
//已经废弃
//for var i = 0;i < 10;i++{
//    print(i)
//}
//https://www.runoob.com/swift/swift-loops.html


for i in 0...10 {
    //0...10表示包含头尾的0到10之间所有的整数
    //0..<10表示包含头不包含尾的0到9之间所有的整数
    //0...10这种条件区间内不能出现任何的空格
    print(i)
}
//如果不关心循环本身的索引，可以直接用下划线如下
for _ in 0...10 {
}
//在遍历数组的时候，Swift还提供了一种特别方便的方式（利用元祖）
var someInts:[Int] = [10, 20, 30]

for (index,value) in someInts.enumerated() {
    //index是下标，value是值
    //这样使得遍历数组能写的更加简洁优雅
    print(index,value)
}
for index in someInts {
    print( "index 的值为 \(index)")
}


var index = 15
repeat{
    print( "index 的值为 \(index)")
    index = index + 1
}while index < 20
