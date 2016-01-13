//
//  RoomView.h
//  SM-PublisherApp-Sucheepatra
//
//  Created by Majharul Huq on 11/28/14.
//  Copyright (c) 2014 SmartMux. All rights reserved.
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
