//
//  FavouriteObjectiveCViewModel.h
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/30.
//

#import <Foundation/Foundation.h>
#import "FavouriteObjectiveCModel.h"
@import FirebaseFirestore;

NS_ASSUME_NONNULL_BEGIN
@interface FavouriteViewModel: NSObject
@property (nonatomic, readwrite) FIRFirestore *db;
@property NSMutableArray<FavouriteModel*> *collectionArray;
- (void)printFavourites: (NSString *) username
completion: (void (^)(NSMutableArray<FavouriteModel*>*))completionBlock;
@end

NS_ASSUME_NONNULL_END
