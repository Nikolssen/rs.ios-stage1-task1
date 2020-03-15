#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSMutableArray <NSString*> *resultArray = [NSMutableArray new];
    int count;
    int beg;
    int j;
    int i = 0;
    while (i<[string length]-1) {
        if ([string characterAtIndex:i] == '<') {
            BOOL flag = YES;
            BOOL endOfLine = NO;
            beg = i+1;
            j = i+1;
            count = 0;
            while (flag &&(!endOfLine)){
                if ([string characterAtIndex:j] == '<') {count++;}
                else if ([string characterAtIndex:j] == '>')
            {
                    if (count > 0 ) {count--;}
                    else {flag = NO; }
            }
                         j++;
                if  (j == [string length]) endOfLine = YES;
                         }
            
            
            if (!flag) [resultArray addObject: [string substringWithRange:NSMakeRange(beg, j-1-beg)]];
            
        }
        else if ([string characterAtIndex:i] == '[') {
                       BOOL flag = YES;
                       BOOL endOfLine = NO;
                       beg = i+1;
                       j = i+1;
                       count = 0;
                       while (flag && (!endOfLine)) {
                           if ([string characterAtIndex:j] == '[') {count++;}
                           else if ([string characterAtIndex:j] == ']')
                       {
                               if (count > 0 ) {count--;}
                               else {flag = NO; }
                       }
                                    j++;
                           if  (j == [string length]) endOfLine = YES;
                                    }
                       
                       
                       if (!flag) [resultArray addObject: [string substringWithRange:NSMakeRange(beg, j-1-beg)]];
                  
               }
        
        else if ([string characterAtIndex:i] == '(') {
                     BOOL flag = YES;
                     BOOL endOfLine = NO;
                     beg = i+1;
                     j = i+1;
                     count = 0;
                     while (flag && (!endOfLine)) {
                         if ([string characterAtIndex:j] == '(') {count++;}
                         else if ([string characterAtIndex:j] == ')')
                     {
                             if (count > 0 ) {count--;}
                             else {flag = NO; }
                     }
                                  j++;
                         if  (j == [string length]) endOfLine = YES;
                                  }
                     
                     
            if (!flag) [resultArray addObject: [string substringWithRange:NSMakeRange(beg, j-1-beg)]];}
                    
            
        i++;
        
    }
    return resultArray;
}
@end
        
