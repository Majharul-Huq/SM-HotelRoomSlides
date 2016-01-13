//
//  RoomView.m
//  SM-HotelRoomSlides
//
//  Created by Huq Majharul on 1/13/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import "RoomView.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation RoomView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        UIView *nibView = [[[NSBundle mainBundle] loadNibNamed: @"RoomView" owner:self options:nil] objectAtIndex:0];
        [self addSubview:nibView];
        nibView.backgroundColor = UIColorFromRGB(0xF5F5F5);
        
        [self.layer setCornerRadius:8.0f];
        self.layer.masksToBounds = YES;
        
        self.imageViewPhoto.layer.shadowColor = [UIColor grayColor].CGColor;
        self.imageViewPhoto.layer.shadowOffset = CGSizeMake(1, 1);
        self.imageViewPhoto.layer.shadowOpacity = 1;
        self.imageViewPhoto.layer.shadowRadius = 1.0;
        
        [buttonLoadMore.layer setCornerRadius:4.0f];
        buttonLoadMore.layer.masksToBounds = YES;
        buttonLoadMore.backgroundColor = UIColorFromRGB(0x651FFF);
        
        labelRoomType.backgroundColor   = [UIColor clearColor];
        labelPrice.backgroundColor      = [UIColor clearColor];
    }
    
    return self;
}

- (void)setData:(UIImage*)imageRoom withType:(NSString*)type withPrice:(NSString*)price
{
    self.imageViewPhoto.image   = imageRoom;
    labelRoomType.text          = [type uppercaseString];
    labelPrice.text             = [price uppercaseString];
}

@end
