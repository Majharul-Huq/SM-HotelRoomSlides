//
//  RoomView.h
//  SM-HotelRoomSlides
//
//  Created by Huq Majharul on 1/13/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoomView : UIView
{
    IBOutlet    UIButton    *buttonLoadMore;
    IBOutlet    UILabel     *labelRoomType;
    IBOutlet    UILabel     *labelPrice;
}

- (void)setData:(UIImage*)imageRoom withType:(NSString*)type withPrice:(NSString*)price;

@property(nonatomic,weak)   IBOutlet    UIImageView     *imageViewPhoto;
@end
