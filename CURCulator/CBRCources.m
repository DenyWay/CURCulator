//
//  CBRCources.m
//  CURCulator
//
//  Created by Денис Деготьков on 17.07.17.
//  Copyright © 2017 Денис Деготьков. All rights reserved.
//

#import "CBRCources.h"
#import "MyXMLParcerdelegate.h"

@implementation CBRCources

- (CBRCources *) initWithContentsOfURL:(NSURL *) url {
    
    NSError * err = nil;
    NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    
    MyXMLParcerdelegate *parserDelegate = [[MyXMLParcerdelegate alloc] init];
    
    [parser setDelegate:parserDelegate];
    
    [parser parse];
    
    err = [parser parserError];
    
    if(err) {
        NSLog(@"Error %@", err);
        
        //return 1;
    }
    return self;
}

- (NSString *) getValueForCharCode: (NSString *) char_code{
    return @"test";
}


@end
