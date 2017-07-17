//
//  MyXMLParcerdeligate.m
//  CURCulator
//
//  Created by Денис Деготьков on 17.07.17.
//  Copyright © 2017 Денис Деготьков. All rights reserved.
//

#import "MyXMLParcerdelegate.h"

@implementation MyXMLParcerdelegate {
    NSString *currentKey;
    NSString *currentStringValue;
}

- (void) parserDidStartDocument:(NSXMLParser *)parser {
    //NSLog(@"parserDidStartDocument");

}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    NSLog(@"didStartElement --> %@", elementName);
    
    currentKey = nil;
    
    //[currentStringValue release];
    
    currentStringValue = nil;
    
    //if([elementName isEqualToString:@"Valute"]){
        //alloc some object to parse value into
    //} else if([elementName isEqualToString:@"CharCode"]){
    //    currentKey = @"Signature";
    //    return;
    //}

}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    NSLog(@"foundCharacters --> %@", string);
    
    
    //if(currentKey){
    //    if(!currentStringValue){
    //        currentStringValue = [[NSMutableString alloc] initWithCapacity:200];
    //    }
    //    [currentStringValue appendString:string];
   // }
    
    
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    NSLog(@"didEndElement   --> %@", elementName);
    
    //if([elementName isEqualToString:@"Signature"] && [currentStringValue intValue] == 804){
    //    ivar.signature = [currentStringValue intValue];
    //    return;
   // }
}

- (void) parserDidEndDocument:(NSXMLParser *)parser {
    NSLog(@"parserDidEndDocument");
}

@end
