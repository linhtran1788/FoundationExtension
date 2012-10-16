//
//  NSObjectAdditions.m
//  FoundationExtension
//
//  Created by youknowone on 12. 10. 16..
//  Copyright (c) 2012 youknowone.org All rights reserved.
//

#import <objc/runtime.h>

#import "NSAClass.h"
#import "NSObjectAdditions.h"

@implementation NSObject (FoundationExtension)

- (NSAClass *)classObject {
    return [NSAClass classWithClass:self.class];
}

- (const char *)UTF8ClassName {
    return object_getClassName(self);
}

- (NSString *)className {
    return [NSString stringWithUTF8String:object_getClassName(self)];
}

- (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2 withObject:(id)object3 {
    IMP msg;
    msg = class_getMethodImplementation(self.class, aSelector);
    if (msg == 0) {
        return nil;
    }
    return (*msg)(self, aSelector, object1, object2, object3);
}

- (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2 withObject:(id)object3 withObject:(id)object4 {
    IMP msg;
    msg = class_getMethodImplementation(self.class, aSelector);
    if (msg == 0) {
        return nil;
    }
    return (*msg)(self, aSelector, object1, object2, object3, object4);
}

@end