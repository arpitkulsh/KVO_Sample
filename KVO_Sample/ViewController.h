//
//  ViewController.h
//  KVO_Sample
//
//  Created by Arpit Kulshrestha on 05/08/13.
//  Copyright (c) 2013 InnnovationM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)method:(id)sender;


@end
