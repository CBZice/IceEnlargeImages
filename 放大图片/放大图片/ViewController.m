//
//  ViewController.m
//  放大图片
//
//  Created by sanmi on 16/11/3.
//  Copyright © 2016年 sanmi. All rights reserved.
//

#import "ViewController.h"
#import "IceImageView.h"


@interface ViewController ()<IceImageViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    IceImageView *imgView = [[IceImageView alloc] init];
    imgView.frame = CGRectMake(100, 100, 100, 100);
    imgView.openLongPressGes = NO;
    imgView.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:imgView];
    
    IceImageView *imgView2 = [[IceImageView alloc] init];
    imgView2.frame = CGRectMake(20, 500, 50, 50);
    imgView2.image = [UIImage imageNamed:@"1.jpg"];
    imgView2.delegate = self;
    imgView2.openTapGes = NO;
    [self.view addSubview:imgView2];
}

-(void)imageView:(UIImageView *)imageView LongPressGesState:(UIGestureRecognizerState)state {
    if (state == UIGestureRecognizerStateBegan) {
        NSLog(@"long pressTap state :began");
    }else {
        NSLog(@"long pressTap state :ended");
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
