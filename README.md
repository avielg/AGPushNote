AGPushNote
==========

Custom view for easily displaying in-app push notification that feels like default iOS banners.

<img src="https://github.com/avielg/AGPushNote/blob/master/Resources/push_ex.png?raw=true" height="50%">

* Will look like iOS7 on iOS7 and will (try to) look like iOS6 on iOS6.
* Both block and protocol ways are available to control the action of tapping the message and showing/dismissing the view.
* Automatic handling for more than 1 push - Try calling `showWithNotificationMessage:` repeatedly to see how this works (Shown in the example app).
* Action block for tapping the message can be changed at any time - even after the view is already on screen! (Use `setMessageAction:` to set it). 
* Optionaly hide the view after X seconds (Default is 5), remove comment in code the make this work...

## Usage

This is a one liner. Simply import and call this method to show a message:
```objc
#import "AGPushNoteView.h"
.
.
[AGPushNoteView showWithNotificationMessage:@"John Doe sent you a message!"];
```

To set the action for when the user tap the message, call:
```objc
[AGPushNoteView setMessageAction:^(NSString *message) {
        // Do something...
    }];
```
* Since AGPushNote can handle showing multiple notifications, the `message` object in the block will be the message the user tapped on.


## More Stuff

To use the delegate methods call:
```objc
id <AGPushNoteViewDelegate> someObj...
[AGPushNoteView setDelegateForPushNote:someObj];
```

To use the timer to auto hide the view after showing it, finds this line and remove the comment from it:
```objc
@implementation AGPushNoteView
.
.
PUSH_VIEW.closeTimer = [NSTimer...
```
The default 5 seconds delay is set in a define in the head of the `.m` file: 
```objc
#define CLOSE_PUSH_SEC 5
.
.
@interface AGPushNoteView() ...
```

## Credits

AGNoteView was created by [Aviel Gross](http://bit.ly/aviel) in the development of [TLV Airport](https://itunes.apple.com/us/app/tel-aviv-int-airport-nml-t/id796888961?mt=8)
