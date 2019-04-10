import UIKit

var str = "Hello, playground"

/* 数组 */
//数组的创建 在swift中，数据值在被储存进入某个数组之前，数据的类型必须明确，方法是通过显式的类型标注或类型推断
let stringArr = Array<String>()
let floatArr = [Float]()
let intArr = [1,2,3,4,5]

//数组的访问和查找
print(intArr[2])

//通过使用数组的只读属性count和isEnpty 可以读取数组中的元素数量
intArr.isEmpty
intArr.count

//通过使用数组的contains()方法可以判断数组中是否存在某个元素
intArr.contains(3)

//数组的编辑 可以使用数组的 append()方法或者直接使用加号“+”往已有的数组中添加新的元素
var intArr2 = [1,2,3,4,5,6,7,1,2,3,4,5,6,7]
intArr2 += [8]
intArr2.append(9)

//insert()方法，新的元素将被插入数组中指定的index位置，该位置原来的元素依次右移
intArr2.insert(100, at: 2)

//使用下标定位需要修改的元素，然后直接给元素指定新的值即可
intArr2[2] = 10
print(intArr2)

//使用这种方式甚至可以一次性修改数组中
intArr2[3...5] = [8,8,8]
print(intArr2)

//swift 数组提供了几种remove方法，用来删除数组中的元素
intArr2.removeFirst()
print(intArr2)
intArr2.removeLast()
print(intArr2)
intArr2.remove(at: 2)
print(intArr2)
intArr2.removeSubrange(Range(1..<3))
print(intArr2)
intArr2.removeAll()
print(intArr2)

//数组的排序
var intArr3 = [11,22,3,14,25]
intArr3.sort() //sort()方法默认是按升序进行排序的

intArr3.sort(by: >) //降序排序
//对拥有复杂类型元素的数组进行排序也是非常简单的，在下面的例子中建立一个包含3个元组对应的数组，并且按照元组中姓名的升序进行排序
var userList = [(name:"Thomas",age:20),(name:"John",age:32),(name:"Bill",age:28)]
userList.sort{ $0.name < $1.name }
//userList.sort{ $0.age < $1.age }
print(userList)

//多维数组
//多维数组的创建与一位数组类似，
var intArr4 = [[Int]]()
var numbers = [[1,2,3],[4,5,6]]

//往多维数组中添加更多数组元素
numbers.append([8,9,10])
print(numbers[2][0])

//数组的遍历
var newNumbers = [1,2,3,4,5,6,7,8]
for index in 0..<newNumbers.count {
    print("newNumber is \(newNumbers[index])")
}

for num in newNumbers {
    print("newNumber is \(num)")
}

//如果仅需遍历指定范围内的数组元素，可以通过定义Range的方法来实现
let range = 2..<newNumbers.count
for (index,value) in zip(range, newNumbers[range]) {
    print("\(index):\(value)")
}

let scores = ["Jerry":78,"Thomas":88,"John":92]
for (student,score) in scores {
    print(student+"'score is \(score)")
}

//for-in 语句也能很方便的实现对多维数组的遍历 例如
var numbersNext = [[1,2,3],[4,5,6,7]]
for subNumbers in numbersNext {
    for number in subNumbers {
        print(number)
    }
}

/*字典*/
//在swift 语言中，对某个特定字典中可以存储的键和值必须提前定义他们的类型，可以通过显性类型标注或类型推断来定义键和值的类型
var diallingCodes1 = Dictionary<String,String>()
var diallingcodes2 = ["010":"北京","021":"上海","0592":"厦门"]

//字典的读取和编辑
print(diallingcodes2["010"] as Any)

//可以通过下标语法往字典中添加新的元素
diallingcodes2["020"] = "广东"
print(diallingcodes2["020"] as Any)

//如果下标中的键名已经存在于字典中，就会修改该键对应的值
diallingcodes2["020"] = "广州"
print(diallingcodes2["020"] as Any)

//也可以使用字典的 updateValue()方法修改指定键的值
diallingcodes2.updateValue("福州", forKey: "0592")
print(diallingcodes2["0592 "] as Any)
print(diallingcodes2)
//删除字典
diallingcodes2.removeValue(forKey:"020")
print(diallingcodes2)
diallingcodes2["010"] = nil
print(diallingcodes2)

var diallingcodes3 = ["010":"北京","021":"上海","0592":"厦门"]
for key in diallingcodes3.keys {
    print(key)
}

for value in diallingcodes3.values {
    print(value)
}

for (key,value) in diallingcodes3 {
    print(key+":"+value)
}
