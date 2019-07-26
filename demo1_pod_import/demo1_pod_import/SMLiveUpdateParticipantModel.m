//
//  SMLiveUpdateParticipantModel.m
//  demo1_pod_import
//
//  Created by yuhao on 2019/7/25.
//  Copyright © 2019 yuhao. All rights reserved.
//

#import "SMLiveUpdateParticipantModel.h"

@implementation SMLiveUpdateParticipantModel

//- (instancetype)initWithPos:(NSMutableArray *)pos
//                    msgType:(NSString *)msgType
//                       time:(int64_t)mTime
//{
//    self = [super init];
//    if (self) {
//        self.pos = pos;
//        self.msgType = msgType;
//        self.mTime = mTime;
//    }
//    return self;
//}


// 返回容器类中的所需要存放的数据类型 (以 Class 或 Class Name 的形式)。
//+ (NSDictionary *)modelContainerPropertyGenericClass {
//    return @{@"pos" : @"pos"};
//}

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"pos" : @"pos",
             @"msgType" : @"msgType",
             @"mTime" : @"time"};
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    // value should be Class or Class name.
    return @{@"pos" : [SMLiveSubWindowModel class]};
}

@end
