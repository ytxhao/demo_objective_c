//
//  main.m
//  demo1_pod_import
//
//  Created by yuhao on 2019/7/25.
//  Copyright © 2019 yuhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMLiveUpdateParticipantModel.h"
#import "SMLiveSubWindowModel.h"
#import "NSObject+YYModel.h"

int64_t getCurrentTimeStamp() {
    NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];
    return [date timeIntervalSince1970];
}


int64_t getCurrentTimeStampMillis() {
    NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];
    return [date timeIntervalSince1970]*1000;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
        
        NSMutableDictionary *parameters1 = [NSMutableDictionary dictionary];
        
        parameters1[@"id"] = [NSNumber numberWithLongLong:7036874317766590];
        parameters1[@"slotIndex"] = [NSNumber numberWithInt:-1];
        parameters1[@"isVideo"] = [NSNumber numberWithBool:YES];
        
        NSMutableDictionary *parameters2 = [NSMutableDictionary dictionary];
        parameters2[@"id"] = [NSNumber numberWithLongLong:5629499486776088];
        parameters2[@"slotIndex"] = [NSNumber numberWithInt:0];
        parameters2[@"isVideo"] = [NSNumber numberWithBool:YES];
        
        
        NSMutableArray *array = [NSMutableArray array];
        [array addObject:parameters1];
        [array addObject:parameters2];
        
        
        parameters[@"pos"] = array;
        parameters[@"msgType"] = @"updateParticipant";
        parameters[@"time"] = [NSNumber numberWithLongLong:getCurrentTimeStampMillis()];
        
        NSError *error;
        NSData *jsonMsg = [NSJSONSerialization dataWithJSONObject:parameters options:NSJSONWritingPrettyPrinted error:&error];
        
        NSString *msg = [[NSString alloc] initWithData:jsonMsg encoding:NSUTF8StringEncoding];
        NSLog(@"msg: %@", msg);
        
        
        //---------------------json 解析--------------------
        
        NSData *data =[msg dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
        NSString *msgType = dict[@"msgType"];
       // if(msgType != nil){
            SMLiveUpdateParticipantModel *model = [SMLiveUpdateParticipantModel yy_modelWithJSON:msg];
            SMLiveSubWindowModel *sub0 = model.pos[0];
            SMLiveSubWindowModel *sub1 = model.pos[1];
            NSLog(@"slotIndex0=%d slotIndex1=%d",[[sub0 index] intValue],[[sub1 index] intValue]);
      //   }
        
//        NSString *test = @"{\"id\" : 5629499486776088,\"slotIndex\" : -1,\"isVideo\" : true}";
//        SMLiveSubWindowModel *model = [SMLiveSubWindowModel yy_modelWithJSON:test];
//        NSLog(@"model uid=%lld index=%d isVideo=%hhd",model.uid,model.index, model.isVideo);
        
        NSLog(@"Hello, World!");
        //----------------------------
        SMLiveSubWindowModel *subWindowModel = [[SMLiveSubWindowModel alloc]initWithUid:[NSNumber numberWithLongLong:5629499486776088]
                                                                                  index:[NSNumber numberWithInt:-1]
                                                                                isVideo:[NSNumber numberWithBool:YES]];
        NSDictionary *jsonDic = [subWindowModel yy_modelToJSONObject];
        
        NSError *error2;
        NSData *jsonMsg2 = [NSJSONSerialization dataWithJSONObject:jsonDic options:NSJSONWritingPrettyPrinted error:&error2];
        
        NSString *msg2 = [[NSString alloc] initWithData:jsonMsg2 encoding:NSUTF8StringEncoding];
        NSLog(@"to json :%@",msg2);
    }
    return 0;
}
