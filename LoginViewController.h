//
//  LoginViewController.h
//  apartmentshare
//
//  Created by Sidney Maestre on 5/31/13.
//  Copyright (c) 2013 App Design Vault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;

- (IBAction)signUpPressed:(id)sender;
@end
