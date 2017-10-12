//
//  UIButton+LiCategory.m
//  999-Button
//
//  Created by 李晓东 on 17/10/11.
//  Copyright © 2017年 PeanutXu. All rights reserved.
//

// 解析:对于

#import "UIButton+LiCategory.h"

@implementation UIButton (LiCategory)

/**
 修改 UIButton 中 TitleLabel 和 ImageView 的排布
 @param alignment 对齐方式UIControlContentVerticalAlignment, Top/Bottom
 @param who 顶部是 ImageView 还是 TitleLabel
 */
- (void)changeDirectionToVerticalAlignment:(UIControlContentVerticalAlignment)alignment andTop:(TopWith)who {
    
//        UIControlContentVerticalAlignment
    [self setContentVerticalAlignment:alignment];
    // 下面的方法必须在 setContentVertical...之后方能起作用
    CGFloat diffT = fabs(self.titleLabel.center.x - self.center.x);
    CGFloat diffI = fabs(self.imageView.center.x - self.center.x);
    
    CGFloat marginT = self.titleLabel.frame.size.height; // 取 titleLabel 的高度
    CGFloat marginI = self.imageView.frame.size.height;
    // Vertical
    switch (alignment) {
        case UIControlContentVerticalAlignmentBottom:
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -diffT * 2, who == ImageView ? 0 : marginI, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, who == ImageView ? marginT : 0, -diffI * 2)];
            break;
        case UIControlContentVerticalAlignmentCenter:
            [self setTitleEdgeInsets:UIEdgeInsetsMake(who == ImageView ? marginT : -marginT, -diffT * 2, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(who == ImageView ? -marginT : marginT, 0, 0, -diffI * 2)];
            break;
        case UIControlContentVerticalAlignmentTop:
            [self setTitleEdgeInsets:UIEdgeInsetsMake(who == ImageView ? marginI : 0, -diffT * 2, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(who == ImageView ? 0 : marginT, 0, 0, -diffI * 2)];
            break;
        default:
            break;
    }

   
}

/**
 修改 UIButton 中 TitleLabel 和 ImageView 的排布
 
 @param alignment 对齐方式是UIControlContentHorizontalAlignment
 @param who 无用
 */
- (void)changeDirectionToHorizontalAlignment:(UIControlContentHorizontalAlignment)alignment andLeft:(LeftWith)who{
    
//    UIControlContentHorizontalAlignment
    [self setContentHorizontalAlignment:alignment];
    // 下面的方法必须在 setContentVertical...之后方能起作用
    
    CGFloat marginT = self.titleLabel.frame.size.width; // 取 titleLabel 的高度
    CGFloat marginI = self.imageView.frame.size.width;
    
    switch (alignment) {
        case UIControlContentHorizontalAlignmentRight:
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -marginI, 0, marginI)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -marginT)];
            break;
        case UIControlContentHorizontalAlignmentCenter:
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -marginI * 2, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, marginT * 2, 0, 0)];
            break;
        case UIControlContentHorizontalAlignmentLeft:
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -marginI, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, marginT, 0, 0)];
            break;
        default:
            break;
    }
}
@end
