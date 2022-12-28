//
//  ViewController.m
//  SingularityObjCSample
//
//  Created by Shubham Garg on 28/12/22.
//

#import "SingularityViewController.h"

@interface SingularityViewController ()
@end

@implementation SingularityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)loginBtnAxn:(id)sender {
    UIViewController *vc;
    for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
        if (scene.activationState == UISceneActivationStateForegroundActive) {
            for (UIWindow *window in scene.windows) {
                if (window.isKeyWindow) {
                    vc = window.rootViewController;
                    break;
                }
            }
            break;
        }
    }
    NSString *jsonString = @"{\"singularityConfig\":{\"environment\":0},\"key\":\"neobrix\"}";
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary* params = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    [SingularitySDKInitializer startLoginOn:vc with:params listener:self];
}

- (void)onGetSingularityUserInfoWithUser:(NSDictionary<NSString *,id> * _Nonnull)user {
    NSLog(@"user :: %@", user);
}

- (void)onSingularityClose {
    printf("close");
}

- (void)onSingularityErrorWithMessage:(NSString * _Nonnull)message code:(NSInteger)code {
    NSLog(@"message :: %@", message);
}

- (void)onSingularityLogout {
    printf("logout");
}

@end
