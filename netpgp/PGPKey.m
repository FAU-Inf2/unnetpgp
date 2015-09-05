//
//  PGPKey.m
//  Pods
//
//  Created by Sebastian Thürauf on 05.09.15.
//
//

#import "PGPKey.h"

@interface PGPKey ()

@property (nonatomic) NSString * primaryUserID;
@property (nonatomic) PGPKeyType * type;
@property (nonatomic) PGPKeyID * keyID;
@property (nonatomic) NSDate * creationDate;
@property (nonatomic) NSDate * expirationDate;

@end

@implementation PGPKey

- (instancetype) initWithPrimaryUserID:(NSString *)primaryUserID
								 KeyId:(PGPKeyID *)keyID
							   keyType:(PGPKeyType *)type
						dateOfCreation:(NSDate *)creationDate
						ExpirationDate:(NSDate *)expirationDate
								 Users:(NSMutableArray *)users
							   SubKeys:(NSMutableArray *)subKeys
					  PrimaryKeyPacket:(NSObject *)primaryKeyPacket {
	self.primaryUserID = primaryUserID;
	self.keyID = keyID;
	self.type = type;
	self.creationDate = creationDate;
	self.expirationDate = expirationDate;
	self.users = users;
	self.subKeys = subKeys;
	self.primaryKeyPacket = primaryKeyPacket;
	
	return self;
}

@end
