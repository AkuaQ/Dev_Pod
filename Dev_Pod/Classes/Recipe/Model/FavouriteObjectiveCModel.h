//
//  FavouriteObjectiveCModel.h
//  Dev_Pod
//
//  Created by Akua Afrane-Okese on 2020/03/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface FavouriteModel: NSObject
@property NSString *title;
@property NSString *ingredients;
@property NSString *href;
@property NSString *thumbnail;

- (id)initWithName:(NSString *)title
    andIngredients:(NSString *)ingredients
        andWebsite:(NSString *)href
          andImage:(NSString *)thumbnail;
@end
NS_ASSUME_NONNULL_END
