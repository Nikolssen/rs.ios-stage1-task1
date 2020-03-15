#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSArray<NSNumber*> *sortArray = [array sortedArrayUsingSelector:@selector(compare:)];
    int min = 0;
    int max =0;
    for (int i = 0; i<[sortArray count]-1;i++) {min += [sortArray[i] intValue];}
    for (int i= 1; i<[sortArray count];i++) {max+=[sortArray[i] intValue];}
    NSNumber *resMin = [NSNumber numberWithInt:min];
    NSNumber *resMax = [NSNumber numberWithInt:max];
    return @[resMin, resMax];
}

@end
