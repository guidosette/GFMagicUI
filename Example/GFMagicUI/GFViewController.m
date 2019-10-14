//
//  GFViewController.m
//  GFMagicUI
//
//  Created by guidosette on 10/14/2019.
//  Copyright (c) 2019 guidosette. All rights reserved.
//

#import "GFViewController.h"

@interface GFViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation GFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hideKeyboard {
	[_textField1 resignFirstResponder];
	[_textField2 resignFirstResponder];
	[_searchBar resignFirstResponder];
}

@end
