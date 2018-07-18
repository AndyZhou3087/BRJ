//
//  IOSPurchase.m
//  kuxx-hllm_v1.1.1
//
//  Created by Hailin Rao on 2016/12/16.
//
//

#import <Foundation/Foundation.h>
#import "IOSPurchase.h"
#import "CCLuaBridge.h"
#import "CCLuaEngine.h"

static int _dict;
static std::string payCode[] = { "ve000", "ve001", "ve002", "ve003"};

@interface IOSPurchase ()

@end

@implementation IOSPurchase

- (void) initMyBuy {
    _productId = @"";
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
}

- (void) buy:(NSDictionary *)dict {
    for(NSString * key in [dict allKeys]) {
        NSLog(@"aaa11111111111------%@ : %@", key, [[dict objectForKey:key] description]);
    }
    _productId = [dict objectForKey:@"goodsId"];
    //_productId = (NSString*);
    _dict =(int)[[dict objectForKey:@"callback"] intValue];
    
    //[self requestProductData];
    //JhGlobalData::setHasBuy(true);
    //[[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    SKPayment * payment = [SKPayment paymentWithProductIdentifier:_productId];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

- (void) restore {
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response NS_AVAILABLE_IOS(3_0) {
    NSArray * myProduct = response.products;
    //NSLog(@"aaa product id=%@", response.invalidProductIdentifiers);
    //NSLog(@"aaa count=%d", (int)[myProduct count]);
    for (SKProduct * product in myProduct) {
        //NSLog(@"product info");
        //NSLog(@"des=%@", [product description]);
        //NSLog(@"title=%@", product.localizedTitle);
        //NSLog(@"ldes=%@", product.localizedDescription);
        //NSLog(@"price=%@", product.price);
        //NSLog(@"id=%@", product.productIdentifier);
        if ([product.productIdentifier isEqualToString:_productId]) {
            SKPayment * payment = [SKPayment paymentWithProduct:product];
            [[SKPaymentQueue defaultQueue] addPayment:payment];
            break;
        }
    }
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions NS_AVAILABLE_IOS(3_0) {
    NSLog(@"aaa updatedTransactions");
    UIAlertView * alertView;
    for (SKPaymentTransaction * transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased:
                //NSLog(@"aaa transaction complelete");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                //NSString * pid = transaction.payment.productIdentifier;
                alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"购买成功" delegate:nil cancelButtonTitle:NSLocalizedString(@"close", nil) otherButtonTitles:nil, nil];
                [alertView show];
                //NSLog(@"aaa transiden=%@", transaction.transactionIdentifier);
                
                
                [self didAfterCompleted:_dict];
                break;
            case SKPaymentTransactionStateFailed:
                NSLog(@"aaa transaction failed");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"购买失败" delegate:nil cancelButtonTitle:NSLocalizedString(@"close", nil) otherButtonTitles:nil, nil];
                [alertView show];
                /*if (JhGlobalData::getHasBuy() && [transaction.payment.productIdentifier isEqualToString:_productId]) {
                    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
                    JhGlobalData::setHasBuy(false);
                }*/
                [self didAfterFaild:_dict];
                break;
            case SKPaymentTransactionStateRestored:
                NSLog(@"aaa transaction restored");
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"恢复成功" delegate:nil cancelButtonTitle:NSLocalizedString(@"close", nil) otherButtonTitles:nil, nil];
                [alertView show];
                
                for (int i=0; i<4; i++) {
                    if ([transaction.payment.productIdentifier isEqualToString:[NSString stringWithUTF8String:payCode[i].c_str()]])
                        [self didAfterCompleted:_dict];
                }
                /*if (JhGlobalData::getHasBuy() && [transaction.payment.productIdentifier isEqualToString:_productId]) {
                    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
                    JhGlobalData::setHasBuy(false);
                }*/
                break;
        }
        
    }
    //[[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}

- (void)requestDidFinish:(SKRequest *)request NS_AVAILABLE_IOS(3_0) {
    //NSLog(@"aaa didfinish");
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error NS_AVAILABLE_IOS(3_0) {
    //NSLog(@"aaa didfailwitherror");
}

- (void)didAfterCompleted:(int)handlerID{
    NSLog(@"lua call ocFounction succeed");
    //这里获取lua层的数据后  对数据进行操作（例如调用支付宝接口等） 将返回的数据再通过下面的方法回传给lua层
    
    //    int handlerID = (int)[[dict objectForKey:@"callBack"] intValue];  //lua传输过来的回调lua的方法名inergerValue    这里可以将该id缓存在oc层的一个全局变量中  在合适的位置再回调lua层
    cocos2d::LuaBridge::pushLuaFunctionById(handlerID); //压入需要调用的方法id
    cocos2d::LuaStack *stack = cocos2d::LuaBridge::getStack();  //获取lua栈
    stack->pushString("success");  //将需要传递给lua层的参数通过栈传递
    stack->executeFunction(1);  //共有1个参数 (“oc传递给lua的参数”)，这里传参数 1
    cocos2d::LuaBridge::releaseLuaFunctionById(handlerID); //最后记得释放
}

- (void)didAfterFaild:(int)handlerID{
    NSLog(@"lua call ocFounction succeed");
    //这里获取lua层的数据后  对数据进行操作（例如调用支付宝接口等） 将返回的数据再通过下面的方法回传给lua层
    
    //    int handlerID = (int)[[dict objectForKey:@"callBack"] intValue];  //lua传输过来的回调lua的方法名inergerValue    这里可以将该id缓存在oc层的一个全局变量中  在合适的位置再回调lua层
    cocos2d::LuaBridge::pushLuaFunctionById(handlerID); //压入需要调用的方法id
    cocos2d::LuaStack *stack = cocos2d::LuaBridge::getStack();  //获取lua栈
    stack->pushString("fail");  //将需要传递给lua层的参数通过栈传递
    stack->executeFunction(1);  //共有1个参数 (“oc传递给lua的参数”)，这里传参数 1
    cocos2d::LuaBridge::releaseLuaFunctionById(handlerID); //最后记得释放
}

@end
