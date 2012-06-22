//
//  LSCustomTableViewController.m
//  LikeStaticCellsTest
//
//  Created by Hidetoshi Mori on 12/06/22.
//  Copyright (c) 2012年 hmori.jp. All rights reserved.
//

#import "LSCustomTableViewController.h"

@interface LSCustomTableViewController ()

@end

@implementation LSCustomTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:
            [NSString stringWithFormat:@"cell_%d_%d", indexPath.section, indexPath.row]
            ];
}

#pragma mark UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
     [NSString stringWithFormat:@"cell_%d_%d", indexPath.section, indexPath.row]
     ];
    return cell.frame.size.height;
}



@end

