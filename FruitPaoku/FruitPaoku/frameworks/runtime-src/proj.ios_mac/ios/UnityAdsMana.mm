//
//  ViewController.m
//  testunityads
//
//  Created by Hailin Rao on 2016/12/6.
//  Copyright © 2016年 Hailin Rao. All rights reserved.
//

#import "UnityAdsMana.h"
#include "IOSPurchase.h"


IOSPurchase * iosPurchase;
@implementation UnityAdsMana


+ (void)initBuy:(NSDictionary *)dict {
    iosPurchase = [[IOSPurchase alloc] init];
    [iosPurchase initMyBuy];
    
    NSLog(@"initVungleSdk success!");
}

+ (void)buy:(NSDictionary*)dict {
    NSLog(@"lua call ocFounction tobuy");
    [iosPurchase buy:dict];
    //    NSString * eventName = [NSString stringWithFormat:@"buy%@", [NSString stringWithUTF8String:productId]];
    //[TalkingDataGA onEvent:eventName eventData:nil];
}

@end
