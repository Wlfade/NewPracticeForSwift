import UIKit

//OC if
//if (判断句){
//}

//1.swift中if的写法
//1> if后面的()可以省略
//2> 判断句不再有非0/nil即真，判断句必须有明确的真假（bBool -->true/false）
let a = 10
if a>0{
    print("a大于0")
}else{
    print("a小于等于0")
}

//2.swift中else if的用法
//用法和if用法一致
let score = 92

if score < 0 || score > 100 {
    print("不合理的分数")
}else if score < 60{
    print("不及格")
}else if score < 80{
    print("及格")
}else if score < 90{
    print("良好")
}else if score <= 100{
    print("不错哦")
}

//3.三目运算符
let m = 20
let n = 30
/*
var result = 0
if m>n{
result = m
}else{
result = n
}
*/
let result = m > n ? m:n




