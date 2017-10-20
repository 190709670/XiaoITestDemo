//
//  SecondViewController.m
//  XiaoITestDemo
//
//  Created by lihui on 2017/10/20.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "SecondViewController.h"
#import "ChatTableViewCell.h"

@interface SecondViewController ()<UITableViewDelegate,UITableViewDataSource>
//@property (nonatomic) NSInteger RowNumber;
@property (nonatomic, strong) NSMutableArray *ChatContentMutableArray;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"小i机器人";
    [self setObject];
}
-(void)setObject{
    self.mainChatTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    self.mainChatTableView.delegate = self;
    self.mainChatTableView.dataSource = self;
    [self.mainChatTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:self.mainChatTableView];
    
    self.ChatContentMutableArray = [NSMutableArray arrayWithArray:@[@"小i机器人",
                                                                    @"小i机器人小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人",
                                                                    @"小i机器人小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人",
                                                                    @"小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人",
                                                                    @"小i机器人小i机器人小i机器人",
                                                                    @"小i机器人小i机器人",
                                                                    @"小i机器人",
                                                                    @"小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人",
                                                                    @"小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人小i机器人"]];
    //self.RowNumber = 5;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ChatTableViewCell *cell = [[ChatTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KCell"];
    NSString *contentString = [self.ChatContentMutableArray objectAtIndex:indexPath.row];
    if (indexPath.row%2 == 1) {
         [cell setChatContentLeft:contentString];
    }else{
         [cell setChatContentRight:contentString];
    }
   
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ChatContentMutableArray.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    ChatTableViewCell *cell = (ChatTableViewCell *)[self.mainChatTableView cellForRowAtIndexPath:indexPath];
    ChatTableViewCell *cell = (ChatTableViewCell *)[self tableView:tableView cellForRowAtIndexPath:indexPath];

    return [cell Cellheight];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
