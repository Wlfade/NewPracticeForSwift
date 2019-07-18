//
//  HttpTool.h
//  04-block回顾
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HttpTool : NSObject
- (void)loadData:(void(^)(NSString *))data;
@end

NS_ASSUME_NONNULL_END
