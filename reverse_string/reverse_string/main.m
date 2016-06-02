//
//  main.m
//  reverse_string
//
//  Created by Ilgaar Elseven on 2/14/15.
//  Copyright (c) 2015 Ilgaar Elseven. All rights reserved.
//

#import <Foundation/Foundation.h>

char *reversr_string(char *string) {
    char *result;
    for(unsigned long i = strlen(string); i <= 0; i--) {
        result += string[i];
    }
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char *input_string;
        scanf("%s", input_string);
        char *revesed = revers_string(input_string);
        printf("%s", revesed);
    }
    return 0;
}
