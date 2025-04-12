//
//  ViewController.m
//  ObjCTask1
//
//  Created by Anzhelika Kazutina on 10/04/2025.
//

#import "ViewController.h"
#import "CountryTableViewCell.h"
#import "FlagsAPI.h"

@interface ViewController ()
@property (strong, nonatomic) NSArray *countries;

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    CountriesAPI *api = [[CountriesAPI alloc] init];
    [api fetchCountriesWithCompletion:^(NSArray<Country *> *counties, NSError *error) {
        self.countries = counties;
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    Country *country = self.countries[indexPath.row];
    NSURL *flagURL = [[NSURL alloc] initWithString:[[[FlagsAPI alloc] init] getCountryFlagImageUrlForCountryWithCode: country.cca2]];
    CountryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CountryCell" forIndexPath: indexPath];
    if (flagURL != nil) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            NSData *imageData = [NSData dataWithContentsOfURL: flagURL];
            if (imageData) {
                UIImage *image = [UIImage imageWithData:imageData];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    cell.flagImageView.image = image;
                });
            }
        }
                       );
        
    }
    cell.countryNameLabel.text = country.name;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.countries.count;
}

@end
