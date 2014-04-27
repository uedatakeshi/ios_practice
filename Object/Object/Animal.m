//
//  Animal.m
//  Object
//
//  Created by 上田 剛 on 2014/04/26.
//  Copyright (c) 2014年 uedatakeshi. All rights reserved.
//

#import "Animal.h"

@implementation Animal
- (void)speak
{
    NSLog(@"%@", self.voice);
    
    
    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%d", __LINE__);
    NSLog(@"%s", __FILE__);
}

#pragma mark - debug view
- (void)date
{
    NSDate *theDate = [[NSDate alloc] init];
    NSLog(@"theDate %@", theDate);
    
    NSDate *theTime = [[NSDate alloc] initWithTimeIntervalSinceNow:300];
    NSLog(@"theTime %@", theTime);
    
    NSDate *today = [NSDate date];
    NSLog(@"today %@", today);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSLog(@"locale %@", [NSLocale systemLocale]);
    [formatter setLocale:[NSLocale systemLocale]];
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    NSDate *formatedDate = [formatter dateFromString:@"2013-12-31 14:21:44"];
    NSLog(@"その日が %@", formatedDate);

    NSDateFormatter *myformatter = [[NSDateFormatter alloc] init];
    [myformatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    [myformatter setLocale:[NSLocale systemLocale]];
    [myformatter setTimeZone:[NSTimeZone systemTimeZone]];
    NSDate *myDate = [myformatter dateFromString:@"2013/12/31 14:21:44"];
    NSLocale *locale = [NSLocale currentLocale];
    NSLog(@"その日は %@", [myDate descriptionWithLocale:locale]);
    
    NSDateFormatter *jaformatter = [[NSDateFormatter alloc] init];
    [jaformatter setDateFormat:@"yyyyねんMM月dd日 HH時mm分ss秒"];
    NSString *dayString = [jaformatter stringFromDate:[NSDate date]];
    NSLog(@"%@", dayString);
}

@end
