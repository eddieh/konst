#import <Foundation/Foundation.h>
#import "KTConst.h"
#import "KTDefine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
	NSString *inst = @"Example";

	NSLog(@"equal? %d", inst == KTConstExample);          // works & is always fast!

	//NSLog(@"equal? %d", inst == KTDefineExample);       // compile time warning

	NSLog(@"equal? %d", [inst isEqual:KTDefineExample]);  // works, but could be O(n)
    }
    return 0;
}
