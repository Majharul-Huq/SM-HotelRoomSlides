//
//  ViewController.h
//  SM-HotelRoomSlides
//
//  Created by Huq Majharul on 1/13/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SliderScrollView.h"

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet SliderScrollView *scrollView;

@end

