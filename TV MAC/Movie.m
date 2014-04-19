//
//  Movie.m
//  TV A la carta
//
//  Created by Oscar Salas Mestres on 19/04/14.
//  Copyright (c) 2014 Oscar Salas Mestres. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (void)initWithDictionary:(NSDictionary *)dict
{
    self.titul = [dict valueForKey:@"name"];
    self.idm = [dict valueForKey:@"idm"];
    self.descripcio = [dict valueForKey:@"plot"];
    self.urlImatge = [dict valueForKey:@"mediaType"];
    self.valoracio = [[dict valueForKey:@"rating"] floatValue];
    self.mediaType = [[dict valueForKey:@""] intValue];
    self.any = [[dict valueForKey:@"year"] intValue];
}

@end
