# Project Setup

1. Create multi-platform Xcode project
2. Xcode configurations: 
   - Debug
   - Release
   - alpha (Debug-alpha, Release-alpha)
   - beta (Debug-beta, Release-beta)
   Xcode > Your project file > PROJECT > Info > Configurations
3. LaunchScreen
   - Xcode > File > New > File... > iOS > User Interface > Launch Screen > `LaunchScreen`
   - Info.plist
```xml
<key>UILaunchStoryboardName</key>
<string>LaunchScreen</string>
```
4. AppIcons `Assets.xcassets` > AppIcon


Build Documentation (xcode > Product > Build Documentation ⌃⇧⌘D)
