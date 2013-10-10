//
//  RegisterViewController.m
//  apartmentshare
//
//  Created by Misato Tina Alexandre on 10/10/13.
//  Copyright (c) 2013 App Design Vault. All rights reserved.
//

#import "RegisterViewController.h"
#import "ADVTheme.h"
#import "AppDelegate.h"
#import "User.h"


@interface RegisterViewController ()

@end

@implementation RegisterViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    id<ADVTheme> theme=[ADVThemeManager sharedTheme];
    //table view size is not coming out right. fix this later!
    self.signupTableView =[[UITableView alloc]initWithFrame:CGRectMake(16, 100, 294, 110) style:UITableViewStyleGrouped];
    
    [self.signupTableView setScrollEnabled:NO];
    [self.signupTableView setBackgroundView:nil];
    [self.view addSubview:self.signupTableView];
    
    [self.signupTableView setDataSource:self];
    [self.signupTableView setDelegate:self];
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[theme viewBackground]]];
    
    [self.signupButton setBackgroundImage:[theme buttonBackgroundForState:UIControlStateNormal] forState:UIControlStateNormal];
    [self.signupButton setBackgroundImage:[theme buttonBackgroundForState:UIControlStateHighlighted] forState:UIControlStateHighlighted];
    
    self.userRegisterTextField=[[UITextField alloc]initWithFrame:CGRectMake(20, 10, 260, 50)];
    [self.userRegisterTextField setPlaceholder:@"username"];
    [self.userRegisterTextField setAutocapitalizationType:UITextAutocapitalizationTypeNone];
    
    self.passwordRegisterTextField=[[UITextField alloc]initWithFrame:CGRectMake(20, 10, 260, 50)];
    [self.passwordRegisterTextField setPlaceholder:@"password"];
    [self.passwordRegisterTextField setSecureTextEntry:YES];
    [self.passwordRegisterTextField setAutocapitalizationType:UITextAutocapitalizationTypeNone];
    
    self.userRegisterTextField.delegate=self;
    self.passwordRegisterTextField.delegate=self;
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)viewDidUnload{
    self.userRegisterTextField=nil;
    self.passwordRegisterTextField=nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=nil;
    if (indexPath.row==0) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"usernameCell"];
        [cell addSubview:self.userRegisterTextField];
        
    }else{
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"passwordCell"];
        [cell addSubview:self.passwordRegisterTextField];
    }
  
    
    return cell;
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

- (IBAction)signUpUserPressed:(id)sender {
}
@end
