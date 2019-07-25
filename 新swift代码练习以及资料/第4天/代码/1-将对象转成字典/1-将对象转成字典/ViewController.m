//
//  ViewController.m
//  1-将对象转成字典
//
//  Created by 单车 on 2019/7/25.
//  Copyright © 2019 单车. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDictionary *dict = @{@"name" : @"why",@"age":@18,@"height":@1.88};
    
    Person *person = [[Person alloc]init];
    [person setValuesForKeysWithDictionary:dict];
    
    NSDictionary *dict1 = [person dictionaryWithValuesForKeys:@[@"name",@"age",@"height"]];
    NSLog(@"%@",dict1);
}


@end
