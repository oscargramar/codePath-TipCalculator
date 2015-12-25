# codePath-TipCalculator
PreWork Submission

I chose not to change the layout of the app. Instead, the app works almost the same way that the basic app does,
with three major extensions. 

Tip Settings
This extension works by retrieving the values stored in NSUserDefaults for preferred tips. The user can increase or decrease this preferred percentage through the use of a UIStepper. Anytime the stepper is changed, the value is remembered. This updated value is also reflected in the UISegmentedControl.

Split My Bill
Really this could have been done in a much more simple way, but I chose to do it in such a way to showcase animation of UIViews, and having a parent view controller be in control of a UIView allocated manually. Because of this, the TipViewController is responsible for passing values from itself to the SplitView. If a user switches to a new ViewController before the SplitView is dismissed, the program iterates and removes the SplitView from the superview. 

Theme
This is a simple method of changing your preferred background color. The sliders allow picking of RGB values from 0-255 and a little preview box shows you what it all looks like before you hit apply. When chosen, the values are stored in NSUserDefaults, and the sliders are updated as such.

