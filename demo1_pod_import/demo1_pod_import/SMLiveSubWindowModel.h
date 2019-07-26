//
//  SMLiveSubWindowModel.h
//  StarMaker
//
//  Created by yuhao on 2019/7/25.
//  Copyright © 2019 uShow. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SMLiveSubWindowModel : NSObject

@property (nonatomic, strong) NSNumber *uid;
@property (nonatomic, strong) NSNumber *index;
@property (nonatomic, strong) NSNumber *isVideo;


- (instancetype)initWithUid:(NSNumber *)uid
                      index:(NSNumber *)index
                    isVideo:(NSNumber *)isVideo;
@end
