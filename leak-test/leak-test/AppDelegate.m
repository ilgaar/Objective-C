//
//  AppDelegate.m
//  leak-test
//
//  Created by Ilgaar Sheykhlari on 5/30/16.
//  Copyright © 2016 Ilgaar Elseven. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    - (IBAction)start:(id)sender {
        while (true)  // Yes I know that this is an infinity loop
        {
            NSString *test = [[NSString alloc] init];
            test = [NSString stringWithFormat:@"llalalallalalallalalalalallalalllallalalallalal"];
            test = nil;
            // Why does this leak memory ? I think ARC is releasing it automatically ?
        }
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
