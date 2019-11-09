#import "Size.h"

@implementation BoardSize

- (instancetype)initWithWidth: (NSInteger)aWidth andHeight: (NSInteger)aHeight {
    self = [super init];
    if (self) {
        width = aWidth;
        height = aHeight;
    }
    return self;
}

- (NSInteger)width {
    return width;
}

- (NSInteger)height {
    return height;
}

@end
