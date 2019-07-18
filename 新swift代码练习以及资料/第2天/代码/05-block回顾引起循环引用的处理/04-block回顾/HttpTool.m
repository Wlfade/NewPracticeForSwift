//
//  HttpTool.m
//  04-block回顾
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

#import "HttpTool.h"

@interface HttpTool ()
/** block */
//@property(nonatomic,weak)void(^DataBlock)(NSString *); //使用weak 定义
@property(nonatomic,copy)void(^DataBlock)(NSString *);
@end

@implementation HttpTool
- (void)loadData:(void(^)(NSString *))data{
    self.DataBlock = data;
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"拿到数据，并且进行回调：%@",[NSThread currentThread]);
            data(@"result");
        });
    });
}
@end
