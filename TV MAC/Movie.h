//
//  Movie.h
//  TV A la carta
//
//  Created by Oscar Salas Mestres on 19/04/14.
//  Copyright (c) 2014 Oscar Salas Mestres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property NSString *titul;
@property NSString *idm;
@property NSString *descripcio;
@property NSString *urlImatge;
@property float valoracio;
@property int mediaType;
@property int any;

- (void)initWithDictionary:(NSDictionary *)dict;

@end
