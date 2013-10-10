//
//  RegisterViewController.h
//  apartmentshare
//
//  Created by Misato Tina Alexandre on 10/10/13.
//  Copyright (c) 2013 App Design Vault. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StackMob.h"



@interface RegisterViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;


@property (nonatomic, strong) UITextField *userRegisterTextField;
@property (nonatomic, strong) UITextField *passwordRegisterTextField;
@property (nonatomic, strong) UITableView *signupTableView;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;

- (IBAction)signUpUserPressed:(id)sender;
@end
