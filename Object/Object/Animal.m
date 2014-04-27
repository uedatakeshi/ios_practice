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

- (void)datecompare
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd"];
    NSDate *today = [NSDate date];
    NSDate *eventDate = [formatter dateFromString:@"2014/01/15"];
    NSTimeInterval secs = [eventDate timeIntervalSinceDate:today];
    NSInteger dayes = round(secs / (60*60*24));
    NSLog(@"あと %ld 日", dayes);
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy/MM/dd"];
    NSDate *date1 = [df dateFromString:@"2013/07/10"];
    NSDate *date2 = [df dateFromString:@"2013/07/16"];
    
    if ([date1 isEqualToDate:date2]) {
        NSLog(@"同じ日");
    } else {
        NSLog(@"違う日");
    }
 
    NSDateFormatter *cdf = [[NSDateFormatter alloc] init];
    [cdf setDateFormat:@"yyyy/MM/dd"];
    NSDate *date3 = [cdf dateFromString:@"2013/07/10"];
    NSDate *date4 = [cdf dateFromString:@"2013/07/10"];
    NSComparisonResult result = [date3 compare:date4];
    switch (result) {
        case NSOrderedAscending:
            NSLog(@"date3の方が古い");
            break;
        case NSOrderedDescending:
            NSLog(@"date3の方が新し");
            break;
        case NSOrderedSame:
            NSLog(@"同じ日");
            break;
        default:
            break;
    }
}
@end
