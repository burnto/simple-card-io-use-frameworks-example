//
//  ViewController.m
//  simple-card-io
//
//  Created by Fitzgerald, Brent on 8/28/15.
//
//

#import "ViewController.h"
#import <CardIO/CardIO.h>

@interface ViewController () <CardIOPaymentViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [self presentViewController:[[CardIOPaymentViewController alloc] initWithPaymentDelegate:self]
                       animated:YES
                     completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)userDidCancelPaymentViewController:(CardIOPaymentViewController *)paymentViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)userDidProvideCreditCardInfo:(CardIOCreditCardInfo *)cardInfo inPaymentViewController:(CardIOPaymentViewController *)paymentViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
