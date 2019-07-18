//
//  ViewController.m
//  04-block回顾
//
//  Created by 单车 on 2019/7/18.
//  Copyright © 2019 单车. All rights reserved.
//

#import "ViewController.h"
#import "HttpTool.h"
@interface ViewController ()
/** 注释 */
@property(nonatomic,strong)HttpTool *tools;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tools = [[HttpTool alloc]init];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.tools loadData:^(NSString * result) {
        self.view.backgroundColor = [UIColor redColor];
    }];
}

- (void)dealloc{
    NSLog(@"ViewController--dealloc");
}
@end
