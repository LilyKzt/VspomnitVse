//
//  CountryTableViewCell.h
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 12/04/2025.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CountryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *countryNameLabel;

@end

NS_ASSUME_NONNULL_END
