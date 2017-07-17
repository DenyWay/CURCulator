//
//  ViewController.m
//  CURCulator
//
//  Created by Денис Деготьков on 17.07.17.
//  Copyright © 2017 Денис Деготьков. All rights reserved.
//

#import "ViewController.h"

#import "CBRCources.h"


@interface ViewController ()

@end

@implementation ViewController 
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.curNames = @[@"USD",@"EUR"];
    self.curRates = @[@59.8806,@68.3597f];
    
    CBRCources *cources = [[CBRCources alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://www.cbr.ru/scripts/XML_daily.asp"]];
    
    // Не успел доделать загрузку курсов
    
    
    self.curSelector.dataSource = self;
    self.curSelector.delegate = self;
    
    self.curSelector.frame = CGRectMake(0, 670, 375, 216);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)convertBtn:(id)sender {
    
    double res = [_inputField.text doubleValue] * [_curRates[[_curNames indexOfObject:self.selectorTitle.titleLabel.text]] doubleValue];
    
    NSString *result = [[NSString alloc] initWithFormat:@"%f", res];
   
    _outputField.text = result;
}

- (IBAction)selectCur:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:0.3];
    self.curSelector.frame = CGRectMake(0, 225, 375, 216);
    [UIView commitAnimations];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return self.curNames.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.curNames[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.selectorTitle.titleLabel.text = self.curNames[row];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:0.3];
    self.curSelector.frame = CGRectMake(0, 670, 375, 216);
    [UIView commitAnimations];
    
}

@end
