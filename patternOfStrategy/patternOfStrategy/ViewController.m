//
//  AppDelegate.h
//  patternOfStrategy
//  NSString *errorMessage = nil;指令隐藏的含义：左边NSString *errorMessage字段名的定义声明(定义声明字段名栈器皿/字段名的定义声明本身对应着一片有效的栈内存区域(栈内存区域器皿中理论上用于存放与内容相关的堆内存区地址(即内容堆内存区实例值的地址[类名XX alloc]部分))；右边nil即内容堆内存区实例值的地址为nil即不存在内容堆内存区实例值(备注：内容堆内存区实例值不存在但字段名栈器皿对应的有效的栈内存区域依旧存在(只不过栈器皿为空器皿))
//  Created by haijunyan on 2019/2/15.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"

#import "EmailValidator.h"
#import "PhoneNumberValidator.h"

@interface ViewController ()
//策略校验器
@property(nonatomic,strong)InputValidator *validator;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //将判断逻辑写在策略校验算法类中VC变得优雅简洁
    NSString *errorMessage = nil;
    NSLog(@"==%d",[PhoneNumberValidator validateInput:@"15261882222" ErrorMessage:&errorMessage]);
    NSLog(@"==%d",[EmailValidator validateInput:@"15261882222@163.com" ErrorMessage:&errorMessage]);




}


@end
