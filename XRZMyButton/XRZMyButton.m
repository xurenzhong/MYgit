//
//  XRZMyButton.m
//  LoveLimitFree
//
//  Created by XuRenzhong on 16/3/22.
//  Copyright © 2016年 XuRenzhong. All rights reserved.
//

#import "XRZMyButton.h"

@implementation XRZMyButton

+ (instancetype)addBlockButtonWithFrame:(CGRect)frame title:(NSString *)title image:(UIImage *)image bgImage:(UIImage *)bgImage tag:(int)tag actionBlock:(MyBlcok)actionBlock{
    XRZMyButton *button = [XRZMyButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:bgImage forState:UIControlStateNormal];
    
    button.tag = tag;
    button.buttonBlock = actionBlock;
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

+ (void)buttonClick:(XRZMyButton *)button{
    if (button.buttonBlock) {
        button.buttonBlock(button);
    }
}

@end
