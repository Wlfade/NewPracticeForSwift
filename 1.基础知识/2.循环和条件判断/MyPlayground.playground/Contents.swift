import UIKit

var str = "Hello, playground"
/* for循环 */
for index in 0..<3
{
    print("index is \(index)")
}
//for-in 语句中， ..< 符号表示数值返回在 0~3之间，但是不包含数字3

for index1 in 0...3 {
    print("index is \(index1)")
}

//数组遍历
let students = ["Jerry","Thomas","John"]
for student in students {
    print("student name:\(student)")
}


//字典类型数组的遍历
// 通过for-in 循环语句可以遍历一个字典的键值对(key-value pairs).在遍历字典时，字典的每一项元素会以(key,value)元组的形式返回
let scores = ["Jerry":78,"Thomas":88,"John":92]
for (student,score) in scores {
    print(student+"'score is \(score)")
//    print(student+"是名字"+"分数是\(score)")
}
//因为字典的内容在内部是无序的，所以遍历元素时不能保证与其插入的顺序一致，字典元素的遍历顺序和插入顺序可能不同

/* while循环 */
var index = 0
while index < 3 {
    index += 1
    print("try connect server again")
}

/* repeat-while循环 相当于 do-while */
var index1 = 0
repeat
{
    index1 += 1
    print("try connect server again")
}
while index1 < 3

//由于repeat-while 语句是先执行代码块再进行条件的判断，因此代码段总是会被执行至少一次。
var index2 = 0
repeat
{
    index2 += 1
    print("try connect server again 2")
}
while index2 < 0

let IDCard = "330382133210142248"
let count = IDCard.lengthOfBytes(using: String.Encoding.utf8)
//if(count != 18 && count != 15)
if count != 18 && count != 15
{
    print("错误的身份证号码")
}

//在 Objective-C 环境中使用if 语句时，如果代码段只有一行，可以不使用大括号“{}”但是在 swift 中，为了提高代码的规范性，大括号是强制使用的

let IDCard2 = "330382133210142248"
let count2 = IDCard.lengthOfBytes(using: String.Encoding.utf8)
//if(count != 18 && count != 15)
if count2 == 18
{
    print("正确的身份证号码")
}
else if count2 == 15
{
    print("正确的身份证号码")
}
else
{
    print("错误的身份证号码")
}

/* switch 条件判断语句 */
let time = 12
switch time {
case 7:
    print("It's time to get up")
case 8,12,18:
    print("It's time to eating")
case let x where x>18 && x <= 24:
    print("Happy Time")
case 1...6:
    print("It's time for rest")
default:
    print("keep busy")
}

/* continue 语句和fallthrough 语句 */
//continuej语句用来告诉用户一个循环体停止本次循环，并立即进入下次循环
let studentGender = ["男","女","男","女","男","男","女"]
var boysAmount = 0
var studentAmount = 0

for gender in studentGender {
    studentAmount += 1
    if (gender == "女") {
        continue
    }else{
        boysAmount += 1
    }

}
print("学生数量\(studentAmount)")
print("男生数量 \(boysAmount)")

let time1 = 6
var message = "It's now"
switch time1 {
case 2,3,6,7,9,10,16:
    message += "\(time1)o'clock"
    fallthrough
case 4,5,8:
    message += "hehe\(time1)o'clock"
    fallthrough
default:
    message += "."
}
print("message :\(message)")
//由于使用了 fallthrough 语句，因此当执行完第一个case 分支后，会跳转到 第二个分支 再跳到 default,从而message变量添加句号


