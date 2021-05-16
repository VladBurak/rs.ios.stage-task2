#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
// Нужно найти количество пар чисел из массива, числа в которых различаются на переданное число
    
    
    int count = 0;

    for (int i = 0; i < array.count; i++) {
        for (int j = 1 + i; j < array.count; j++) {
            if (array[i].intValue - array[j].intValue == number.intValue || array[j].intValue - array[i].intValue == number.intValue) {
                count += 1;
        }
    }
    }
return count;

    }
   

@end
