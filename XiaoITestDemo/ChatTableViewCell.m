//
//  ChatTableViewCell.m
//  XiaoITestDemo
//
//  Created by lihui on 2017/10/21.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "ChatTableViewCell.h"
@interface ChatTableViewCell ()
@property (nonatomic, strong) UILabel *ChatLabel;
@end

@implementation ChatTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
   id superself = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self.contentView addSubview:self.ChatLabel];
    return superself;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setChatContentLeft:(NSString *)contentString{
    CGRect rect = [self GetChatContentSizeWithContentString:contentString];
    [self.ChatLabel setFrame:CGRectMake(10, 5, ceil(rect.size.width)+ 10, ceil(rect.size.height)+ 10)];
    [self.ChatLabel setText:contentString];
    [self.ChatLabel setTextColor:[UIColor darkTextColor]];
    [self.ChatLabel setBackgroundColor:[UIColor cyanColor]];
}
-(void)setChatContentRight:(NSString *)contentString{
    CGRect rect = [self GetChatContentSizeWithContentString:contentString];
    [self.ChatLabel setFrame:CGRectMake(SWidth -ceil(rect.size.width) - 10, 5,ceil(rect.size.width) + 10, ceil(rect.size.height)+ 10)];
    [self.ChatLabel setText:contentString];
    [self.ChatLabel setTextColor:[UIColor darkTextColor]];
    [self.ChatLabel setBackgroundColor:[UIColor orangeColor]];
}
-(UILabel *)ChatLabel{
    if (_ChatLabel == nil) {
        _ChatLabel = [[UILabel alloc]init];
        _ChatLabel.layer.cornerRadius = 5;
        _ChatLabel.layer.masksToBounds = YES;
        _ChatLabel.layer.borderColor = [UIColor grayColor].CGColor;
        _ChatLabel.layer.borderWidth = 2;
        _ChatLabel.numberOfLines = 0;
    }
    return _ChatLabel;
}
-(CGRect)GetChatContentSizeWithContentString:(NSString *)contentString{
   CGRect rect = [contentString boundingRectWithSize:CGSizeMake(SWidth , 200)
                                             options:NSStringDrawingUsesLineFragmentOrigin
                                          attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.f]}
                                             context:nil];
    return rect;
}
-(CGFloat)Cellheight{
    return self.ChatLabel.frame.size.height + 10;
}


@end
