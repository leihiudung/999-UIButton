//
//  ViewController.m
//  999-Button
//
//  Created by 李晓东 on 17/10/8.
//  Copyright © 2017年 PeanutXu. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+LiCategory.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *clickButton;

@property (strong, nonatomic) UIButton *myBtn;
@property (strong, nonatomic) UIButton *youBtn;

@property (strong, nonatomic) UIButton *hisBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.clickButton setImage:[UIImage imageNamed:@"signin"] forState:UIControlStateNormal];
    [self.clickButton setTitle:@"hello" forState:UIControlStateNormal];
    [self.clickButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -10)];

    [self initMyButton];
    [self initYouButton];
    [self initCButton];
    
    [self operateMyButton];
    [self operateYouButton];
    [self operateCButton];
    
    
}

- (void)initMyButton {
    self.myBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.myBtn.layer setBorderColor:[UIColor greenColor].CGColor];
    [self.myBtn.layer setBorderWidth:2];
    [self.myBtn setTitle:@"Hello" forState:UIControlStateNormal];
    [self.myBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.myBtn setImage:[UIImage imageNamed:@"signin"] forState:UIControlStateNormal];
    [self.myBtn setFrame:CGRectMake(0, 0, self.view.bounds.size.width, 60)];
    [self.view addSubview:self.myBtn];
    
    
}
//
- (void)initYouButton {
    self.youBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.youBtn.layer setBorderColor:[UIColor greenColor].CGColor];
    [self.youBtn.layer setBorderWidth:2];
    [self.youBtn setTitle:@"Hello" forState:UIControlStateNormal];
    [self.youBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.youBtn setImage:[UIImage imageNamed:@"signin"] forState:UIControlStateNormal];
    [self.youBtn setFrame:CGRectMake(0, 100, self.view.bounds.size.width - 167, 60)];
    [self.view addSubview:self.youBtn];
}

- (void)initCButton {
    self.hisBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.hisBtn.layer setBorderColor:[UIColor greenColor].CGColor];
    [self.hisBtn.layer setBorderWidth:2];
    [self.hisBtn setTitle:@"Hello" forState:UIControlStateNormal];
    [self.hisBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.hisBtn setImage:[UIImage imageNamed:@"signin"] forState:UIControlStateNormal];
    [self.hisBtn setFrame:CGRectMake(0, 200, self.view.bounds.size.width, 60)];
    [self.view addSubview:self.hisBtn];
}



- (void)operateMyButton {
    // vertical 方向,顶部对齐
//    [self.myBtn changeDirectionToVerticalAlignment:UIControlContentVerticalAlignmentTop andTop:TitleLabel];
    // horizontal 方法,左对齐
    [self.myBtn changeDirectionToHorizontalAlignment:UIControlContentHorizontalAlignmentLeft andLeft:TitleLabel];
}

- (void)operateYouButton {
    // vertical 方向,居中对齐
//    [self.youBtn changeDirectionToVerticalAlignment:UIControlContentVerticalAlignmentCenter andTop:ImageView];
    // horizontal 方法,居中对齐
    [self.youBtn changeDirectionToHorizontalAlignment:UIControlContentHorizontalAlignmentCenter andLeft:TitleLabel];
}

- (void)operateCButton {
    // vertical 方向,底部对齐
//    [self.cBtn changeDirectionToVerticalAlignment:UIControlContentVerticalAlignmentBottom andTop:TitleLabel];
    // horizontal 方法,右对齐
    [self.hisBtn changeDirectionToHorizontalAlignment:UIControlContentHorizontalAlignmentRight andLeft:TitleLabel];
}


@end
