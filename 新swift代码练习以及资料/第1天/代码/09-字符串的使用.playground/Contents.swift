import UIKit
//1.定义字符串
//let opration : String = "="
let str = "Hello, playground"

//2.遍历字符串
for c in str {
    print(c)
}

//3.字符串的拼接
//3.1 两个字符串之间的拼接
let str1 = "小码哥"
let str2 = "IT教育"

//[NSString stringwithformat:@"%@%@",str1,str2]
let str3 = str1 + str2

//3.2 字符串和其他标识符之间的拼接
let name = "yz"
let age = 19
let height = 1.87

let info = "my name is \(name), my age is \(age),my height is \(height)"

//3.3 拼接字符串时，字符串的格式化
let min = 2
let second = 8
let timeString = String(format: "%02d:%02d", arguments: [min,second])

//4.字符串的截取
let urlString = "www.520IT.com"

// 将String 类型转成NSString 类型（string as NSString）
let header = (urlString as NSString).substring(to: 3)
let middle = (urlString as NSString).substring(with: NSMakeRange(4, 5))
let footer = (urlString as NSString).substring(from: 10)







