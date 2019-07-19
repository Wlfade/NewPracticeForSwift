//
//  AppDelegate.swift
//  10-自定义log
//
//  Created by 单车 on 2019/7/19.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}
func XMGLog<T>(message:T,file:String = #file,funcName : String =  #function,lineNum:Int = #line){
    #if DEBUG
    
    let file = (#file as NSString).lastPathComponent
    print("\(file):(\(lineNum))-\(message)")
    
    #endif
}

