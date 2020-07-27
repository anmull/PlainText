//
//  Document.m
//  PlainText
//
//  Created by Jeena on 2014-01-21.
//  Copyright (c) 2014 Jeena. All rights reserved.
//

#import "Document.h"

@implementation Document
@synthesize textView;
@synthesize stringModel;

- (id)init
{
    self = [super init];
    return self;
}

- (NSString *)windowNibName
{
    return @"Document";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    [self.textView setFont:[NSFont fontWithName:@"FiraCode-Light" size:13]];
    [self.textView setTextColor:NSColor.lightGrayColor];
    [self.textView moveToBeginningOfDocument:nil];
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    NSData *data = [[self.textView.textStorage string] dataUsingEncoding:NSUTF8StringEncoding];
    [self.textView breakUndoCoalescing];
    
    if (!data && outError) {
        *outError = [NSError errorWithDomain:NSCocoaErrorDomain code:NSFileWriteUnknownError userInfo:nil];
    }
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    self.stringModel = [[NSAttributedString alloc] initWithString:[NSString stringWithUTF8String:[data bytes]]];
    return !!self.stringModel;
}

@end
