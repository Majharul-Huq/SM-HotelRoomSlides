//
//  SliderScrollView.h
//  SM-HotelRoomSlides
//
//  Created by Huq Majharul on 1/13/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderScrollView : UIScrollView

@property (nonatomic) CGFloat angleRatio;

@property (nonatomic) CGFloat rotationX;
@property (nonatomic) CGFloat rotationY;
@property (nonatomic) CGFloat rotationZ;

@property (nonatomic) CGFloat translateX;
@property (nonatomic) CGFloat translateY;

- (NSUInteger)currentPage;

@end
