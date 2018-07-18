//
//  ViewController.h
//  testunityads
//
//  Created by Hailin Rao on 2016/12/6.
//  Copyright © 2016年 Hailin Rao. All rights reserved.
//

//NSDictionary * _dict;

@interface UnityAdsMana : NSObject
{
    
}

+ (void)initBuy:(NSDictionary *)dict;
+ (void)buy:(NSDictionary*) dict;
+ (void)umengPay:(NSDictionary*)dict;
+ (void)umengPayEx:(NSDictionary*)dict;
+ (void)umentBuy:(NSDictionary*)dict;
+ (void)umentUse:(NSDictionary*)dict;
+ (void)umentBonus:(NSDictionary*)dict;
+ (void)umentOnEvent:(NSDictionary*)dict;
+ (void)umentStartLevel:(NSDictionary*)dict;
+ (void)umentFinishLevel:(NSDictionary*)dict;
+ (void)umentFailLevel:(NSDictionary*)dict;

@end

