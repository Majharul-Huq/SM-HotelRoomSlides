//
//  ViewController.m
//  SM-HotelRoomSlides
//
//  Created by Huq Majharul on 1/13/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import "ViewController.h"
#import "RoomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.view.backgroundColor           = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]];
    self.scrollView.backgroundColor     = [UIColor clearColor];
    
    self.scrollView.delegate = self;
    
    [self createHotelView:[UIImage imageNamed:@"room1.png"] withType:@"Standard" withPrice:@"80$"];
    [self createHotelView:[UIImage imageNamed:@"room2.png"] withType:@"Premier" withPrice:@"100$"];
    [self createHotelView:[UIImage imageNamed:@"room3.png"] withType:@"Deluxe" withPrice:@"200$"];
    [self createHotelView:[UIImage imageNamed:@"room4.png"] withType:@"Junior Suite" withPrice:@"180$"];
    [self createHotelView:[UIImage imageNamed:@"room5.png"] withType:@"Family Suite" withPrice:@"280$"];
    [self createHotelView:[UIImage imageNamed:@"room6.png"] withType:@"Grande Suite" withPrice:@"580$"];
    [self createHotelView:[UIImage imageNamed:@"room7.png"] withType:@"Double Room" withPrice:@"110$"];
    [self createHotelView:[UIImage imageNamed:@"room8.png"] withType:@"Single Room" withPrice:@"60$"];
    [self createHotelView:[UIImage imageNamed:@"room9.png"] withType:@"Luxury" withPrice:@"7000$"];
    [self createHotelView:[UIImage imageNamed:@"room10.png"] withType:@"Executive Suite" withPrice:@"900$"];
}

- (void)createHotelView:(UIImage*)image withType:(NSString*)type withPrice:(NSString*)price
{
    CGFloat width  = CGRectGetWidth(self.scrollView.frame);
    CGFloat height = CGRectGetHeight(self.scrollView.frame);
    
    CGFloat x = self.scrollView.subviews.count * width;
    
    RoomView *roomView = [[RoomView alloc] initWithFrame:CGRectMake(x, 0, width, height)];
    [roomView setData:image withType:type withPrice:price];
    [self.scrollView addSubview:roomView];
    
    self.scrollView.contentSize = CGSizeMake(x + width, height);
}

@end
