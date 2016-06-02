//
//  main.m
//  lengthoword
//
//  Created by Ilgaar Sheykhlari on 6/1/16.
//  Copyright © 2016 Ilgaar Elseven. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if(argc == 1) {
            NSLog(@"You need to provide a file name");
            return 1;
        }
        FILE *wordFile = fopen(argv[1], "r");
        char word[100];
        while(fgets(word, 100, wordFile)) {
            NSLog(@"%s is %lu characters long", word, strlen(word));
        }
        fclose(wordFile);
        NSLog(@"Storage size for an integer is %lu", sizeof(long double));
    }
    return 0;
}
