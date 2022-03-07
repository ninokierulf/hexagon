import Foundation
import UIKit

// ref: https://itnext.io/improve-test-case-execution-time-by-using-testappdelegate-ad0bebb7e17
private func delegateClassName() -> String? {

    return NSClassFromString("XCTestCase") == nil ? NSStringFromClass(AppDelegate.self) : NSStringFromClass(TestAppDelegate.self)
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName())
