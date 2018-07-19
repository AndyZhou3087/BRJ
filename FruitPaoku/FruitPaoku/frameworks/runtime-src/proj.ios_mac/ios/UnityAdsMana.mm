//
//  ViewController.m
//  testunityads
//
//  Created by Hailin Rao on 2016/12/6.
//  Copyright © 2016年 Hailin Rao. All rights reserved.
//

#import "UnityAdsMana.h"
#include "IOSPurchase.h"
#import <UMCommon/UMCommon.h>
#import <UMAnalytics/MobClickGameAnalytics.h>
#import <UMAnalytics/MobClick.h>

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

+ (void)umengPay:(NSDictionary*)dict {
    static int cash =(int)[[dict objectForKey:@"cash"] intValue];
    static int sour =(int)[[dict objectForKey:@"source"] intValue];
    static int _coin =(int)[[dict objectForKey:@"coin"] intValue];
    
    [MobClickGameAnalytics pay:cash source:sour coin:_coin];
}

+ (void)umengPayEx:(NSDictionary*)dict {
    static int cash =(int)[[dict objectForKey:@"cash"] intValue];
    static int sour =(int)[[dict objectForKey:@"source"] intValue];
    static int _price =(int)[[dict objectForKey:@"price"] intValue];
    static int _amount =(int)[[dict objectForKey:@"amount"] intValue];
    NSString* _item =[dict objectForKey:@"item"];
    
    [MobClickGameAnalytics pay:cash source:sour item:_item amount:_amount price:_price];
}

+ (void)umentBuy:(NSDictionary*)dict {
    static int _price =(int)[[dict objectForKey:@"price"] intValue];
    static int _amount =(int)[[dict objectForKey:@"amount"] intValue];
    NSString* _item =[dict objectForKey:@"item"];
    
    [MobClickGameAnalytics buy:_item amount:_amount price:_price];
}

+ (void)umentUse:(NSDictionary*)dict {
    static int _price =(int)[[dict objectForKey:@"price"] intValue];
    static int _amount =(int)[[dict objectForKey:@"amount"] intValue];
    NSString* _item =[dict objectForKey:@"item"];
    
    [MobClickGameAnalytics use:_item amount:_amount price:_price];
}

+ (void)umentBonus:(NSDictionary*)dict {
    static int _price =(int)[[dict objectForKey:@"price"] intValue];
    static int _amount =(int)[[dict objectForKey:@"amount"] intValue];
    NSString* _item =[dict objectForKey:@"item"];
    static int sour =(int)[[dict objectForKey:@"source"] intValue];
    
    [MobClickGameAnalytics bonus:_item amount:_amount price:_price source:sour];
}

+ (void)umentOnEvent:(NSDictionary*)dict {
    NSString* _event =[dict objectForKey:@"event"];
    
    [MobClick event:_event];
}

+ (void)umentStartLevel:(NSDictionary*)dict {
    NSString* _level =[dict objectForKey:@"level"];
    
    [MobClickGameAnalytics startLevel:_level];
}

+ (void)umentFinishLevel:(NSDictionary*)dict {
    NSString* _level =[dict objectForKey:@"level"];
    
    [MobClickGameAnalytics finishLevel:_level];
}

+ (void)umentFailLevel:(NSDictionary*)dict {
    NSString* _level =[dict objectForKey:@"level"];
    
    [MobClickGameAnalytics failLevel:_level];
}

@end
