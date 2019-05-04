//
//  AppDelegate.swift
//  3.触摸手势的使用
//
//  Created by 王玲峰 on 5/4/19.
//  Copyright © 2019 王玲峰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let addEventIcon = UIApplicationShortcutIcon(type: .add)
        let unlockEventIcon = UIApplicationShortcutIcon(templateImageName: "unlockEvent")
        let listEventIcon = UIApplicationShortcutIcon(templateImageName: "listEvent")
        
        let addEvent = UIApplicationShortcutItem(type: "com.coolketang.addMember", localizedTitle: "添加会员", localizedSubtitle: "Add Member", icon: addEventIcon, userInfo: nil)
        
        let unluckEvent = UIApplicationShortcutItem(type: "com.coolketang.unlockMember", localizedTitle: "解锁会员", localizedSubtitle: "Unlock Member", icon: unlockEventIcon, userInfo: nil)
        
        /*
         UIApplicationShortcutItem 初始化方法参数说明
         type  必要参数，表示快捷项目的唯一标识
         localizedTitle  必要参数，表示快捷项目的标题
         localizedSubtitle 可选参数，表示快捷项目的副标题
         icon 可选参数，表示快捷项目的图标
         userInfo  可选参数，表示APP传递给动作的自定义数据信息
         */
        let listEvent = UIApplicationShortcutItem(type: "com.coolketang.memberList", localizedTitle: "会员列表", localizedSubtitle: "Member List", icon: listEventIcon, userInfo: nil)
        
        let shortCutItems = [addEvent,unluckEvent,listEvent]
        
        application.shortcutItems = shortCutItems
        
        
        
        return true
    }
    
    func application(_ application:UIApplication,performActionFor shortcutItem:UIApplicationShortcutItem,completionHandler:(Bool)->Void){
        if shortcutItem.type == "com.coolketang.addMember" {
            print("跳转至添加会员页面")
        }
        else if shortcutItem.type == "com.coolketang.unlockMember" {
            print("跳转至解锁会员页面")
        }
        else if shortcutItem.type == "com.coolketang.memberList" {
            print("跳转至会员列表页面")
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

