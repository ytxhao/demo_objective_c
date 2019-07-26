//
//  SMLiveUpdateParticipantModel.h
//  demo1_pod_import
//
//  Created by yuhao on 2019/7/25.
//  Copyright © 2019 yuhao. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SMLiveSubWindowModel.h"

@interface SMLiveUpdateParticipantModel : NSObject

@property (nonatomic, strong) NSMutableArray<SMLiveSubWindowModel *> *pos;
@property (nonatomic, copy) NSString *msgType;
@property (nonatomic, strong) NSNumber *mTime;

//
//- (instancetype)initWithPos:(NSMutableArray*)pos
//                      msgType:(NSString *)msgType
//                    time:(int64_t)mTime;
@end
