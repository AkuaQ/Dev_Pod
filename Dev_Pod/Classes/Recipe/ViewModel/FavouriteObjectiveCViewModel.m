//
//  FavouriteObjectiveCViewModel.m
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/30.
//

#import <Foundation/Foundation.h>
#import "FavouriteObjectiveCViewModel.h"

@implementation FavouriteViewModel
- (void)printFavourites: (NSString *) username
             completion: (void (^)(NSMutableArray<FavouriteModel*>*))completionBlock; {
    self.db = [FIRFirestore firestore];
    NSMutableArray<FavouriteModel*> *favouriteModel;
    favouriteModel = [[NSMutableArray<FavouriteModel*> alloc] init];
    [[[self.db collectionWithPath:@"favourites"] queryWhereField:@"username" isEqualTo:username]
     getDocumentsWithCompletion:^(FIRQuerySnapshot *snapshot, NSError *error) {
        if (error != nil) {
            NSLog(@"Error getting documents: %@", error);
        } else {
            for (FIRDocumentSnapshot *document in snapshot.documents) {
                FavouriteModel* favouriteArray = [FavouriteModel alloc];
                favouriteArray = [favouriteArray initWithName:document.data[@"title"] andIngredients:document.data[@"ingredients"] andWebsite:document.data[@"href"] andImage:document.data[@"thumbnail"]];
                
                [favouriteModel addObject: favouriteArray];
            }
            completionBlock(favouriteModel);
        }
    }];
}

@end
