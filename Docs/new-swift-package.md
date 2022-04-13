# Swift package

## Create new swift package

1. Xcode > File > New > Packages
   - Save As: <Package Name>
   - Create Package Dialog > Select folder path: apple/Packages
   - Source Control: unchecked
   - Add to: Don't add to any project or workspace
   - Group: No Group
   - Tap 'Create' button

2. Edit `Package.swift`
   - Clean up by deleting commented explanations
   - Include `platforms: [.iOS(.v13), .tvOS(.v13), .macOS(.v11)]` below `name:`
       * Note: upto you to decide what minimum version per platforms
   - Save and Exit Package Project

3. Delete `.gitignore` inside newly created Package subdirectory

## Integrate 

1. Open main project `hexagon.xcodeproj` with Xcode (minimum: v13)

2. Xcode > File > Add Packages > Add Local...
   - Navigate to: apple/Packages
   - Select <Package Name>
   - Tap 'Add Package' button

3. Xcode > Project Navigator (⌘+1) > Packages
   - Reorder to desired placement

4. Xcode > Project Navigator (⌘+1) > hexagon (project)
   - For each target in 'TARGETS'
     + Build Phases > Link Binary with Libraries > Add Items (+)
     + Select <Package Name> 
     + Add
   - Double check above is done for each target (iOS, macOS, etc)

5. Integrate tests of <Package Name> 
   - Xcode > Project Navigator (⌘+1) > test_all 
   - Add Test Target (+)
   - Select <PackageName>tests
   - Add
   - Run Tests: Xcode > Product > Test (⌘+U)
