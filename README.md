# UniversalDetector2 for Objective-C

UniversalDetector2 is a wrapper for [uchardet](http://code.google.com/p/uchardet/), which is based on C++ implementation of the [universal charset detection library](http://lxr.mozilla.org/seamonkey/source/extensions/universalchardet/) by Mozilla.

UniversalDetector2 is an encoding detector library, which takes a sequence of bytes in an unknown character encoding without any additional information, and attempts to determine the encoding of the text.

UniversalDetector2 is a drop-in replacement for [UniversalDetector](https://github.com/siuying/UniversalDetector) with an updated version of the underlying uchardet library.

## Usage

```
CFStringEncoding encoding = [UniversalDetector encodingWithData:data];
NSString* encodingStr      = [UniversalDetector encodingAsStringWithData:data];
```

## Installation

If you use CocoaPods, add following line to your Podfile:

```
pod 'UniversalDetector'
```

Otherwise, add 'UniversalDetector/*.{h,m}', 'external/*.{h,cpp}', 'external/universalchardet/src/base/*.{cpp,h,tab}' and library 'libstdc++' to your project.

## LICENSE

Mozilla Public License, refer to file LICENSE.
