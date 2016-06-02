//
//  main.m
//  hello
//
//  Created by Ilgaar Sheykhlari on 5/31/16.
//  Copyright © 2016 Ilgaar Elseven. All rights reserved.
//

#import <Foundation/Foundation.h>
// returns NO if the two integers hava the same value, YES otherwise

BOOL areIntsDifferent(int thing1, int thing2) {
    if(thing1 == thing2) {
        return(NO);
    } else {
        return(YES);
    }
} // areIntsDifferent
// given a NO value, return a human-readable string "NO". Otherwise "YES"

NSString *boolString(BOOL yesNo) {
    if(yesNo == NO) {
        return(@"NO");
    } else {
        return(@"YES");
    }
} // boolString

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL areTheyDifferent;
        areTheyDifferent = areIntsDifferent(5, 5);
        NSLog(@"are %d and %d different? %@", 5, 5, boolString(areTheyDifferent));
        areTheyDifferent = areIntsDifferent(23, 42);
        NSLog(@"are %d and %d different? %@", 23, 43, boolString(areTheyDifferent));
    }
    return 0;
}
