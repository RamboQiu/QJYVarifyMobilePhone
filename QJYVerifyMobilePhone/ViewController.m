//
//  ViewController.m
//  QJYVerifyMobilePhone
//
//  Created by QiuJunyun on 16/4/28.
//  Copyright © 2016年 QiuJunyun. All rights reserved.
//

#import "ViewController.h"
#import "NSString+QJYVerifyMobilePhone.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)testClick:(id)sender {
    self.statusLabel.text = [self.textField.text isValidPhoneNumber]?@"YES":@"NO";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self testClick:nil];
    return YES;
}

@end
