# NYBackTransition

NYBackTransition is UIViewController Category and iOS7 Costom Transition.  
present and dismiss ViewController Transition Animation like Gmail and Twitter.

- *before*

<img src="https://github.com/naoto0822/NYBackTransition/blob/develop/Doc/before.png?raw=true" /> . <img src="https://github.com/naoto0822/NYBackTransition/blob/develop/Doc/transition.png?raw=true" />

- *after*

<img src="https://github.com/naoto0822/NYBackTransition/blob/develop/Doc/after.png?raw=true" />

## Version

- The current version is 1.0.0

## Requirements

- iOS7 and up
- ARC

## Integrate

### import

```
#import "UIViewController+NYBackTransition.h"
```

### Duration setting

- developer can change parameter of animation duration.

```
/*

 define animation duration

 */

////////////////////////////////////////////////////////////////////////////////////////////////////
// Present Transition Duration
////////////////////////////////////////////////////////////////////////////////////////////////////
static const NSTimeInterval kPresentBackTransitionDuration = 0.40f;

////////////////////////////////////////////////////////////////////////////////////////////////////
// Dismiss Transition Duration
////////////////////////////////////////////////////////////////////////////////////////////////////
static const NSTimeInterval kDismissBackTransitionDuration = 0.40f;
```

### present

```
// example
[self presentViewControllerWithBackTransition:modalVC completion:nil];
```

### dismiss

```
// example
[self dismissViewControllerWithBackTransitionCompletion:nil];
```

## License

The MIT License (MIT)

Copyright (c) 2014 naoto yamaguchi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
