//
//  TSAVDemoViewController.m
//  TSAVDemo
//
//  Created by Nick Hodapp aka Tom Swift on 1/19/11.
//

#import "TSAVDemoViewController.h"
#import "TSAlertView.h"
#import "fonts.h"

@implementation TSAVDemoViewController

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void) onAddMore:(id)sender
{
}

- (void) onShow:(id)sender	
{
	[_messageTextView resignFirstResponder];
	[_titleTextField resignFirstResponder];
	[_widthTextField resignFirstResponder];
	[_maxHeightTextField resignFirstResponder];
	
	TSAlertView *av = [[TSAlertView alloc] initWithResBundleName:@"res"];
    
	av.title = @"";
    UIFont *font = REGULAR_FONT_OF_SIZE(14);
    [av setMessageFont:font];
	av.message = @"Съешь ещё этих мягких французских булок да выпей чаю в нашем приложении всего за $99.99";
    
    [av setMessageShadowOffset:CGSizeMake(0, -1)];
    [av setMessageShadowColor:[UIColor blackColor]];
    
    UIFont *buttonFont = BOLD_FONT_OF_SIZE(19);
    
	[av addButtonWithTitle:@"Button1" Font:buttonFont];
	[av addButtonWithTitle:@"Button2" Font:buttonFont];
    
    [av setButtonsShadowOffset:CGSizeMake(0, 1)];
    [av setButtonsShadowColor:[UIColor whiteColor]];
    [av setButtonsTextColor:[UIColor blackColor]];

	[av show];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	return YES;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

@end