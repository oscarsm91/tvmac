//
//  Utils.m
//  Series MAC
//
//  Created by Oscar Salas Mestres on 19/04/14.
//  Copyright (c) 2014 Oscar Salas Mestres. All rights reserved.
//

#import "Utils.h"
#import "Movie.h"
#import "AFNetworking/AFNetworking.h"

@implementation Utils

- (void)getMoviesWithName:(NSString *)name resultado:(void (^)(NSArray *movies))resultado
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *loginURL = [NSString stringWithFormat:@"http://api.series.ly/v2/search?auth_token=b98ddd0b3770ecb68ddceffe241c22eb&q=%@",name];
    
    loginURL = [loginURL stringByAddingPercentEscapesUsingEncoding:
                            NSASCIIStringEncoding];
    
    [manager POST:loginURL
       parameters:nil
constructingBodyWithBlock:nil
          success:^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {
              
              NSMutableArray *array = [NSMutableArray new];
              
              for(int i=0;i<[[[responseObject valueForKey:@"response"] valueForKey:@"results"] count]; i++)
              {
                  Movie *m = [[Movie alloc] init];
                  [m initWithDictionary:[[[responseObject valueForKey:@"response"] valueForKey:@"results"][i] valueForKey:@"object"]];
                  [array addObject:m];
              }
              resultado([array copy]);
              
              
              
          }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              
          }];
};

@end
