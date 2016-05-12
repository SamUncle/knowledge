//
//  ViewController.m
//  aa
//
//  Created by zhiyou on 16-4-27.
//  Copyright (c) 2016年 zhiyou. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"0~1的随机数(包括0和1)%f",(arc4random()%11)*0.1);
    
    UIView * viewa = [UIApplication sharedApplication].delegate.window;
    UIView * viewb = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 150, 200)];
    NSLog(@"viewb %@",NSStringFromCGPoint(viewb.frame.origin));
    viewb.backgroundColor = [UIColor redColor];
    
    UIView * viewc = [[UIView alloc]initWithFrame:CGRectMake(0, 64, 320, 50)];
    [self.view addSubview:viewc];
    [self.view addSubview:viewb];
    viewc.backgroundColor = [UIColor blueColor];

//    CGPoint toviewp = [viewa convertPoint:viewb.frame.origin toView:viewc];
    UIView * a = [[UIView alloc]init];
//    a.frame = CGRectMake(toviewp.x, toviewp.y, 150, 200);
    a.backgroundColor = [UIColor blackColor];
    [self.view addSubview:a];
    CGPoint fromviewp = [viewa convertPoint:viewb.frame.origin fromView:viewc];
    a.frame = CGRectMake(fromviewp.x, fromviewp.y, 150, 200);
 
//    NSLog(@"%@",NSStringFromCGPoint(toviewp));
    NSLog(@"%@",NSStringFromCGPoint(fromviewp));
    NSLog(@"%d",9|5);//计算的是二进制和之后的十进制值
    Person * per = [[Person alloc]init];
    per.p1 = per;
    [per copy];
//    per.p2 = [per copy];
    NSLog(@"%ld",[per retainCount]);
    
    NSString * str = @"123";//此方法创建不会使引用计数增加
    NSString * str2 = [[NSString alloc]initWithFormat:@"sasdf"];;
//    [str copy];
//    [str copy];
//    [str copy];
//    [str copy];//无论拷贝多少次答案全是-1
    [str2 copy];
    NSLog(@"%ld %ld",[str retainCount],[str2 retainCount]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
