#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *resultArray = [sadArray mutableCopy];
    int i = 1;
    if ([resultArray count] >0){
    while (i<[resultArray count]-1)
    {
      
        
        if ([resultArray[i] intValue]>[resultArray[i-1] intValue] + [resultArray[i+1] intValue])
            {[resultArray removeObjectAtIndex:i];
                if (i!=1) {i--;}}
        else
            i++;
    }}
    return resultArray;
    
}

@end
