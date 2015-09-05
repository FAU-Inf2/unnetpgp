//
//  PGPKey.h
//  Pods
//
//  Created by Sebastian Thürauf on 05.09.15.
//
//

#import <Foundation/Foundation.h>
#import "PGPKeyID.h"

@interface PGPKey : NSObject

typedef NS_ENUM(NSUInteger, PGPKeyType) {
	PGPKeyUnknown,
	PGPKeySecret,
	PGPKeyPublic
};

@property (readonly, nonatomic) NSString * primaryUserID;
@property (readonly, nonatomic) PGPKeyType * type;
@property (readonly, nonatomic) PGPKeyID * keyID;
@property (readonly, nonatomic) NSDate * creationDate;
@property (readonly, nonatomic) NSDate * expirationDate;
@property (nonatomic, retain) NSMutableArray * users;
@property (nonatomic, retain) NSMutableArray * subKeys;
@property (nonatomic, copy) NSObject * primaryKeyPacket;

- (instancetype) initWithPrimaryUserID:(NSString *)primaryUserID
								 KeyId:(PGPKeyID *)keyID
							   keyType:(PGPKeyType *)type
						dateOfCreation:(NSDate *)creationDate
						ExpirationDate:(NSDate *)expirationDate
								 Users:(NSMutableArray *)users
							   SubKeys:(NSMutableArray *)subKeys
					  PrimaryKeyPacket:(NSObject *)primaryKeyPacket;

@end
