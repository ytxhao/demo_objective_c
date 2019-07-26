//
//  SMLiveSubWindowModel.m
//  StarMaker
//
//  Created by yuhao on 2019/7/25.
//  Copyright © 2019 uShow. All rights reserved.
//

#import "SMLiveSubWindowModel.h"


@implementation SMLiveSubWindowModel

- (instancetype)initWithUid:(NSNumber *)uid
                      index:(NSNumber *)index
                    isVideo:(NSNumber *)isVideo {
    self = [super init];
    if (self) {
        self.uid = uid;
        self.index = index;
        self.isVideo = isVideo;
    }
    return self;
}


+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"uid" : @"id",
             @"index" : @"slotIndex",
             @"isVideo" : @"isVideo"};
}
@end
