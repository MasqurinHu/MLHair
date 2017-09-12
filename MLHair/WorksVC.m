//
//  WorksVC.m
//  MLHair
//
//  Created by Ｍasqurin on 2017/9/11.
//  Copyright © 2017年 sammi. All rights reserved.
//

#import "WorksVC.h"
#import "WorksTVCell.h"

@interface WorksVC ()<UITabBarDelegate,UITableViewDataSource>
{
    
}
@property (weak, nonatomic) IBOutlet UITableView *worksStyle;

@end

@implementation WorksVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _worksStyle.delegate = (id)self;
    _worksStyle.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section {
#warning wait vo
    return 30;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    WorksTVCell *cell = [tableView
                         dequeueReusableCellWithIdentifier:@"WorksTVCell"
                         forIndexPath:indexPath];
    return cell;
}



@end
