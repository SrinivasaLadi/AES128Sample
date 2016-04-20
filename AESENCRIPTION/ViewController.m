//
//  ViewController.m
//  AESENCRIPTION
//
//  Created by Dhanushree on 18/04/16.
//  Copyright © 2016 Dhanushree. All rights reserved.
//

#import "ViewController.h"
#import "NSData+AES.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *str = @"Hey its going to be encripted";
    
    NSData* data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    NSData *encriptedData = [data AES128EncryptedDataWithKey:@"Key"];
  //  Its encriptedData
    
    NSLog(@"Encripted data \n %@", encriptedData);
    
    
    NSData *decreptedData = [encriptedData AES128DecryptedDataWithKey:@"Key"];
    
    NSString *str2 = [[NSString alloc] initWithData:decreptedData encoding:NSUTF8StringEncoding];
    
    NSLog(@"descripted String \n %@", str2);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
