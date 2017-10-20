//
//  ChatTableViewCell.h
//  XiaoITestDemo
//
//  Created by lihui on 2017/10/21.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatTableViewCell : UITableViewCell
-(void)setChatContentLeft:(NSString *)contentString;
-(void)setChatContentRight:(NSString *)contentString;
-(CGFloat)Cellheight;
@end
