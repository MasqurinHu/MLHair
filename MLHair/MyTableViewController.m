//
//  MyTableViewController.m
//  MLHair
//
//  Created by sammi on 2017/8/29.
//  Copyright © 2017年 sammi. All rights reserved.
//

#import "MyTableViewController.h"
#import "MyTableViewCell.h"
#import "AvatorTViCell.h"
#import "SignInVC.h"
#import "SignInController.h"

@interface MyTableViewController ()
{
    SignInController *MLhair;
}
@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MLhair = [SignInController new];
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (!MLhair.isSignIn) {
        SignInVC *signInVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SignInVC"];
        [self.navigationController pushViewController:signInVC animated:false];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell;
    if (indexPath.row == 0) {
        AvatorTViCell *mytablecell = [self.tableView dequeueReusableCellWithIdentifier:@"AvatorTViCell" forIndexPath:indexPath];
        cell = mytablecell;
    } else {
    MyTableViewCell *mytablecell = [self.tableView dequeueReusableCellWithIdentifier:@"MyTableViewCell" forIndexPath:indexPath];
        
        switch (indexPath.row) {
            case 1:
                mytablecell.titleLabel.text = @"修改密碼";
                break;
            case 2:
                mytablecell.titleLabel.text = @"收藏造型";
                break;
            case 3:
                mytablecell.titleLabel.text = @"喜愛設計";
                break;
            default:
                break;
        }
        cell = mytablecell;
    }

    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
