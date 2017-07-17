//
//  CBRCources.h
//  CURCulator
//
//  Created by Денис Деготьков on 17.07.17.
//  Copyright © 2017 Денис Деготьков. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBRCources : NSObject {

@private NSMutableDictionary * Valutes;

}

// Конструктор принимает на вход URL веб-сервиса
- (CBRCources *) initWithContentsOfURL:(NSURL *) url;


// Для доступа к данным класса будем использовать
// метод getValueForCharCode.
- (NSString *) getValueForCharCode: (NSString *) char_code;

@end
