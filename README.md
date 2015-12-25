# Pre-Work- Tips
Tips is a tip calculator application for iOS
Submitted by: Oscar Granados-Martinez
Time Spent: Approximately 7 hours spend in total

## User Stories 
The following **required** functionality is complete:
* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [X] Settings page to change the default tip percentage.
* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* [X] A theme page to choose and store the default color scheme of the app along with a preview before applying
* [X] Bill splitting done accross a custom UIView 


##Video Walkthrough

Here's a video walkthrough of implemented user stories:


<img src= 'http://i.imgur.com/HnDJiQH.gif' title= 'Video Walkthrough' width = '' alt = 'Video Walkthrough ' />'

GIF created with [LiceCap](http://www.cockos.com/licecap/).




##Notes

I chose not to change the layout of the app. Instead, the app works almost the same way that the basic app does,
with three major extensions. 

Tip Settings
This extension works by retrieving the values stored in NSUserDefaults for preferred tips. The user can increase or decrease this preferred percentage through the use of a UIStepper. Anytime the stepper is changed, the value is remembered. This updated value is also reflected in the UISegmentedControl.

Split My Bill
Really this could have been done in a much more simple way, but I chose to do it in such a way to showcase animation of UIViews, and having a parent view controller be in control of a UIView allocated manually. Because of this, the TipViewController is responsible for passing values from itself to the SplitView. If a user switches to a new ViewController before the SplitView is dismissed, the program iterates and removes the SplitView from the superview. 

Theme
This is a simple method of changing your preferred background color. The sliders allow picking of RGB values from 0-255 and a little preview box shows you what it all looks like before you hit apply. When chosen, the values are stored in NSUserDefaults, and the sliders are updated as such.

Challenges were mostly passing data in between views and view controllers (i.e. viewcontroller to view, not necessarily viewcontroller to viewcontroller) and getting used to the swift syntax.

## License

Copyright [yyyy] [name of copyright owner]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.