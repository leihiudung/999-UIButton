//
//  UIButton+LiCategory.h
//  999-Button
//
//  Created by 李晓东 on 17/10/11.
//  Copyright © 2017年 PeanutXu. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum TopWith{
    ImageView = 0,
    TitleLabel
} TopWith, LeftWith;

typedef enum UIControlContentAlignment {
    ControlContentVerticalAlignmentLi = UIControlContentVerticalAlignmentCenter,
    UIControlContentHorizontalAlignmentLi
} UIControlContentAlignment;

@interface UIButton (LiCategory)

- (void)changeDirectionToVerticalAlignment:(UIControlContentVerticalAlignment)alignment andTop:(TopWith)who;
- (void)changeDirectionToHorizontalAlignment:(UIControlContentHorizontalAlignment)alignment andLeft:(LeftWith)who;
@end
