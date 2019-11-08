#import <Foundation/Foundation.h>

@interface BoardSize : NSObject
{
    NSInteger width;
    NSInteger height;
}

- (instancetype)initWithWidth: (NSInteger)aWidth andHeight: (NSInteger)aHeight;

- (NSInteger)width;
- (NSInteger)height;

@end
