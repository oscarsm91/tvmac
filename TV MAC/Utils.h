//
//  Utils.h
//  Series MAC
//
//  Created by Oscar Salas Mestres on 19/04/14.
//  Copyright (c) 2014 Oscar Salas Mestres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utils : NSObject

- (void)getMoviesWithName:(NSString *)name resultado:(void (^)(NSArray *movies))resultado;

@end
