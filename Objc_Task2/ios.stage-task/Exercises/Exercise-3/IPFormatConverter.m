#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    
// Input: [192, 168, 1, 1] Output: “192.168.1.1”
    
// If the number of elements in the array is less than 4, then the remaining space is filled with zeros:
//    ```
//    Input: [192]
//    Output: “192.0.0.0”
    
    if (numbersArray == nil || numbersArray.count == 0) {
        return @"";
    }
    
    NSMutableString *res = [[NSMutableString alloc]init];
    for (int i = 0;i < 4; i++) {
        int n = 0;
        
        if (i <numbersArray.count) {
            n = [numbersArray[i] intValue];
        } if (n > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else if (n < 0) {
            return @"Negative numbers are not valid for input.";
        } else {
            [res appendFormat:@"%d.", n];
            
        }
        
    }
    
    return [res substringToIndex:res.length -1];
    
}

@end
