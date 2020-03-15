#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    int summ=0;
    for (NSNumber *dishPrice in bill) {
        summ+= [dishPrice intValue];
    }
    if ((summ - [bill[index] intValue])/2 == [sum intValue]) {return @"Bon Appetit";}
    else
        return [NSString stringWithFormat:@"%i", ([sum intValue] - ((summ - [bill[index] intValue])/2))];
   
}

@end
