//
//  ViewController.h
//  CURCulator
//
//  Created by Денис Деготьков on 17.07.17.
//  Copyright © 2017 Денис Деготьков. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property NSArray *curNames;
@property NSArray *curRates;

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UITextField *outputField;

- (IBAction)convertBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIPickerView *curSelector;

- (IBAction)selectCur:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *selectorTitle;

@end

