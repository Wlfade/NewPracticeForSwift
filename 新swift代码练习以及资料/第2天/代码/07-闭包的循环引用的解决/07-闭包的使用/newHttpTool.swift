//
//  newHttpTool.swift
//  07-闭包的使用
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

class newHttpTool: NSObject {
    
    var callBack : ((String)->())?
    
    func loadData(callBack : @escaping (String)->()){
        
        self.callBack = callBack
        
        DispatchQueue.global().async {
            print("发送网络请求：\(Thread.current)")
            
            DispatchQueue.main.sync {
                print("获取到数据，并且进行回调\(Thread.current)")
                callBack("获取到数据")
            }
        }
    }
}
