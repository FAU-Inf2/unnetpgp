//
//  PGPKeyID.h
//  Pods
//
//  Created by Sebastian Thürauf on 05.09.15.
//
//

#import <Foundation/Foundation.h>

@interface PGPKeyID : NSObject

@property (readonly, nonatomic) NSString * longKeyString;
@property (readonly, nonatomic) NSString * shotKeyString;
@property (readonly, nonatomic) NSString * fingerprint;

- (instancetype)initWithLongKeyString:(NSString *)longKeyString
									 ShortKeyString: (NSString *)shortKeyString
									 Fingerprint: (NSString *)fingerprint;

@end
