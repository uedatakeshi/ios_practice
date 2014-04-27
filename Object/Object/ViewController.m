//
//  ViewController.m
//  Object
//
//  Created by 上田 剛 on 2014/04/26.
//  Copyright (c) 2014年 uedatakeshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Animal *dog;
    dog = [Animal alloc];
    dog = [dog init];
    dog.voice = @"ワン！";
    [dog speak];
    [dog date];
    [dog datecompare];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
