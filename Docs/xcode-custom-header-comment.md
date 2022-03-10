# Xcode New File Custom Headers


Find `IDETemplateMacros.plist` in [Files](zFiles/IDETemplateMacros.plist)

Add/modify FILEHEADER in the root as String
and paste header template as value. 

Example:

```
/**
/**
___FILENAME___
___PACKAGENAME___

Created by: Nino Kierulf on ___DATE___
Copyright (c) ___YEAR___ ninokierulf

*/
```


# Search Locations

The full list of locations that Xcode searches, in order of priority:

Project - single user
`<ProjectName>.xcodeproj/xcuserdata/[username].xcuserdatad/`

Project - shared by all users
`<ProjectName>.xcodeproj/xcshareddata/`

Workspace - single user
`<WorkspaceName>.xcworkspace/xcuserdata/[username].xcuserdatad/`

Workspace - shared by all users
`<WorkspaceName>.xcworkspace/xcshareddata/`

Globally for Xcode
`~/Library/Developer/Xcode/UserData/`

# Install

Place `IDETemplateMacros.plist` in preferred location in [Search Locations](#search-locations)


# References
- https://useyourloaf.com/blog/changing-xcode-header-comment/