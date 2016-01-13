//
//  SliderScrollView.m
//  SM-HotelRoomSlides
//
//  Created by Huq Majharul on 1/13/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import "SliderScrollView.h"

#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

@implementation SliderScrollView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if(self){
        self.pagingEnabled = YES;
        self.clipsToBounds = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        
        self.angleRatio = .5;
        self.rotationX = -1.;
        self.rotationY = -1.;
        self.rotationZ = 0.;
        
        self.translateX = .25;
        self.translateY = .25;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat contentOffsetX = self.contentOffset.x;
    
    for(UIView *view in self.subviews){
        
        view.layer.transform = CATransform3DIdentity;
        CGFloat distanceFromCenterX = view.frame.origin.x - contentOffsetX;
        distanceFromCenterX = distanceFromCenterX * 100. / CGRectGetWidth(self.frame);
        
        CGFloat angle = distanceFromCenterX * self.angleRatio;
        CGFloat offset = distanceFromCenterX;
        CGFloat translateX = (CGRectGetWidth(self.frame) * self.translateX) * offset / 100.;
        CGFloat translateY = (CGRectGetWidth(self.frame) * self.translateY) * fabs(offset) / 100.;
        CATransform3D t = CATransform3DMakeTranslation(translateX, translateY, 0.);

        view.layer.transform = CATransform3DRotate(t, DEGREES_TO_RADIANS(angle), self.rotationX, self.rotationY, self.rotationZ);
    }
}

- (NSUInteger)currentPage
{
    CGFloat pageWidth = self.frame.size.width;
    float fractionalPage = self.contentOffset.x / pageWidth;
    return lround(fractionalPage);
}

@end
