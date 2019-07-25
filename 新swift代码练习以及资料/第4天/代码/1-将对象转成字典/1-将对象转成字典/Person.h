//
//  Person.h
//  1-将对象转成字典
//
//  Created by 单车 on 2019/7/25.
//  Copyright © 2019 单车. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
/** 名字 */
@property(nonatomic,copy)NSString *name;
/** 年龄 */
@property (nonatomic, assign) NSInteger age;
/** 高度 */
@property (nonatomic, assign) CGFloat height;

@end

NS_ASSUME_NONNULL_END
