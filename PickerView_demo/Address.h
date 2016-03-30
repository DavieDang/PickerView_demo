//
//  Address.h
//  PickerView_demo
//
//  Created by BingoMacMini on 16/3/30.
//  Copyright © 2016年 BingoMacMini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Address : NSObject
@property(nonatomic,strong) NSArray *city;

@property(nonatomic,strong) NSArray *Zicity;


-(instancetype)initWithCity:(NSArray *)city1 andZicity:(NSArray *)Zicity1;
@end
