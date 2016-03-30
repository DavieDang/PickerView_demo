//
//  Address.m
//  PickerView_demo
//
//  Created by BingoMacMini on 16/3/30.
//  Copyright © 2016年 BingoMacMini. All rights reserved.
//

#import "Address.h"

@implementation Address

- (instancetype)initWithCity:(NSArray *)city1 andZicity:(NSArray *)Zicity1{
    if (self = [super init]) {
        self.city = city1;
        self.Zicity = Zicity1;
    }
    return self;
}







@end
