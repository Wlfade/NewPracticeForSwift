//
//  HttpTool.swift
//  07-闭包的使用
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class HttpTool: NSObject {
    //闭包的类型：(参数列表) -> (返回值类型)
//    func loadData(callBack : (jsonData:String)->()){
//        dispatch_async(dipatch_get_global_queue(0,0)){ ()-> Void in
//            print("发送网络请求：\(NSThread.currentThread())")
//            dispatch_sync(dispatch_get_main_queue(),{
//                -> Void in print("获取到数据，并且进行回调\(NSThread.currentThread())")
//                callBack(jsonData:"jsonData数据")
//            })
//        }
//    }
    
    
    func loadData(callBack : @escaping (String)->()){
        DispatchQueue.global().async {
            print("发送网络请求：\(Thread.current)")

            DispatchQueue.main.sync {
                print("获取到数据，并且进行回调\(Thread.current)")
                callBack("获取到数据")
            }
        }
    }
    
    //闭包表达式标准格式：
//    {(parameters) -> returnType in
//        //闭包函数体
//    }
    
    //1.创建一个标准格式的闭包sum
    let sum:(Int,Int)->(Int) = {
        (a:Int,b:Int)->Int in return a + b
    }
    
    //2.可以省略声明部分的参数和返回值
    let sum1 = {
        (a:Int,b:Int) -> Int in
        return a+b
    }
    
    //来试着简化闭包的写法
    //1.隐式返回单表达式闭包
    //对于单行表达式闭包，可以省略‘return’关键字隐式返回单行表达式的结果
    let sum2 = {(a:Int,b:Int)-> Int in
        a+b
    }
    // 在闭包函数体部分非常短的情况下，可以将代码改为一行
    let sum3 = { (a: Int, b: Int) -> Int in  a + b }

    //2.省略参数以及返回值类型
    // swift可以自动推断参数及返回值的类型，可以省略参数以及返回值类型
    let sum4 = { (a, b) -> Int in
        a + b
    }
    
    let sum5 = { (a: Int, b: Int)  in
        a + b
    }
    
    let sum6:(Int, Int) -> Int = { (a, b) in
        a + b
    }
    
    
    //3. 参数名称缩写
    /**swift 为闭包提供了参数名称自动缩写功能，可以通过$0,$1顺序调用闭包的参数
     * 比如 第一个参数为a, 可以通过$0调用，第二个参数为b，可以通过$1调用
     * 如果使用参数名称缩写，可以在闭包表达式中省略参数列表，in 关键字也可以省略
     */
    let sum7:(Int, Int) -> Int = {$0 + $1}

    /*
    1. 尾随闭包是一个写在函数括号之后的闭包表达式
    2. 当你需要将一个很长的闭包表达式当做函数的最后一个参数，可以使用尾随闭包来增强代码的可读性
    优点：使用尾随闭包可以将闭包的具体功能优雅地封装在函数后，而不需要将整个闭包包裹在函数参数括号内
    */
    //下面笔者用一个sum函数对尾随闭包进行说明
    //1. 函数除闭包参数外还有其他参数，闭包有参数，无返回值
    func sumAction(num1: Int, num2: Int, resultBlock :(Int) -> Void) {
        resultBlock(num1 + num2)
    }
    //2. 函数仅有一个闭包作为参数，闭包表达式无参数，无返回值
    func sumAction2(block:()->Void){
        block()
    }
    
    //捕获值
    //闭包可以在上下文中捕获常量和变量，在自己的函数体内引用和修改这些值
    
    /** 定义一个方法increaseOperation， 参数为整型的amount，返回值类型为() -> Int （函数类型）
     *  在方法内部定义了一个闭包increase，在increase内部捕获了result和amount
     */

    func increaseOperation(_ amount: Int) -> () -> Int {
        var result = 0
        let increase: () -> Int = {
            result += amount
            return result
        }
        return increase
    }


    
    
    
    
    

}
