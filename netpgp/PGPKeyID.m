//
//  PGPKeyID.m
//  Pods
//
//  Created by Sebastian Thürauf on 05.09.15.
//
//

#import "PGPKeyID.h"

@interface PGPKeyID ()

@property (nonatomic) NSString * longKeyString;
@property (nonatomic) NSString * shotKeyString;
@property (nonatomic) NSString * fingerprint;

@end

@implementation PGPKeyID

- (instancetype)initWithLongKeyString:(NSString *)longKeyString
					   ShortKeyString: (NSString *)shortKeyString
						  Fingerprint: (NSString *)fingerprint
{
	self.longKeyString = longKeyString;
	self.shotKeyString = shortKeyString;
	self.fingerprint = fingerprint;
	return self;
}

@end
