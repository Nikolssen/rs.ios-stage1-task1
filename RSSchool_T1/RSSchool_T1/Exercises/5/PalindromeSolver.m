#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    int minPossibleChanges = 0;
    NSString *result = [s copy];
    for (int i=0; i<[n intValue] /2; i++) {
        if ([s characterAtIndex:i] !=[s characterAtIndex:([n intValue]-i-1)])    minPossibleChanges++;
    }
    if (minPossibleChanges > [k intValue])
    result = @"-1";
        else
        {
            
            if ([k intValue] == minPossibleChanges)
                {
                    for (int i=0; i<[n intValue] /2; i++)
                        {
                            if ([s characterAtIndex:i] > [s characterAtIndex:([n intValue]-i-1)])
                                {
                                    NSString *curChar = [NSString stringWithFormat:@"%c" , [s characterAtIndex:([n intValue]-i-1)]];
                                    result = [result stringByReplacingCharactersInRange: NSMakeRange(i, 1) withString: curChar];
                        
                                }
                            else if ([s characterAtIndex:i] > [s characterAtIndex:([n intValue]-i-1)])
                                {
                                    NSString *curChar = [NSString stringWithFormat:@"%c" , [s characterAtIndex:i]];
                                    result = [result stringByReplacingCharactersInRange: NSMakeRange((([n intValue]-i-1)), 1) withString: curChar];
                                }
                
                        }
                
                }
            
            
    
        }
 return result;
}

@end
