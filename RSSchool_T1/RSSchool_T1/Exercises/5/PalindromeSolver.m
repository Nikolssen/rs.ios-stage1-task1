#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    int minPossibleChanges = 0;
    int addPossibleChanges = 0;
    NSString *result = [s copy];
    for (int i=0; i<[n intValue] /2; i++) {
        if ([s characterAtIndex:i] !=[s characterAtIndex:([n intValue]-i-1)])  {
            
            minPossibleChanges++;
            if (([s characterAtIndex:i]==[@'9' charValue] ) || ([s characterAtIndex:([n intValue]-i-1)]==[@'9' charValue]))
                addPossibleChanges ++;
            else
                addPossibleChanges +=2;
                }
        
    }
    if (minPossibleChanges > [k intValue])
    result = @"-1";
        else
        {
            
    
                    for (int i=0; i<[n intValue] /2; i++)
                        {
                            
                            
                            if ([k intValue]-minPossibleChanges >0 ){
                            if ((addPossibleChanges>=2) && ([s characterAtIndex:i] != [@'9' charValue])){
                            result = [result stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"9"];
                                result = [result stringByReplacingCharactersInRange:NSMakeRange([result length]-1, 1) withString:@"9"];
                                addPossibleChanges-=2;
                                continue;
                            }}
                            
                            
                            if ([s characterAtIndex:i] < [s characterAtIndex:([n intValue]-i-1)])
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
            
 return result;
}

@end
