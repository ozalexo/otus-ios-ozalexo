# Lesson 001. Practice 001.

## Steps to reproduce
1. [x] Remove Storyboards from newly created Single View App
   * Delete all *.story files
   * Clean up "Main Interface" field in `General` settings.
     ![General Settings: Main Interface](https://user-images.githubusercontent.com/661889/58513906-3e86f980-81a9-11e9-91ec-67a97f27629d.png)
     If this value remains "Main", our project will search for a Main.storyboard (which we have deleted) upon launch
2. [x] Lauch app manually
   * Add the following code into `AppDelegate.application` method:
    ```swift
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /* UIWindow(frame: UIScreen.main.bounds) creates a UIWindow object
         * with equivalent size as the iOS device’s screen (UIScreen)
         */
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // We want to make some modifications (bkg), so let's create variable for View Controller
        let vc = ViewController()
        vc.view.backgroundColor = .red // Type inference. UIColor.red
        
        // Nothing will be displayed if the rootViewController is unassigned
        window?.rootViewController = vc
        // makeKeyAndVisible() tells the window to show in the front-end
        window?.makeKeyAndVisible()

        // Override point for customization after application launch.
        return true
    }
      ```
   * Result:
    ![Screenshot 2019-05-29 at 01 06 53](https://user-images.githubusercontent.com/661889/58515612-164dc980-81ae-11e9-90d0-3499496248ce.png)
:white_check_mark: Git repo: https://github.com/ozalexo/otus-ios-ozalexo/tree/Lesson/001/Practice/001

## Questions

:question: New WebView. Need additional info.

:question: Guidelines. What is it?

:question: AppDelegate.swift, application: why not `self.window`? What is the difference? Found it here: [Starting an iOS project without storyboard](https://medium.com/@how_noobs_think/starting-an-ios-project-without-storyboard-94c0e618a119)

## Solved "issues"

1. Black screen on app start. Trace: `Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'Could not load NIB in bundle: 'NSBundle`

   **Solution**:
   * Fixed typo at AppDelegate.swift:
     ```diff
     - let vc = UIViewController()
     + let vc = ViewController()
     ```
   * Found and reverted unexpected changes at `Info.plist` (root cause is unknown, no *.xib files in the project):
     ```diff
     - <key>NSMainNibFile</key>
     - <string> </string>
     ```

## Additional information
:information_source: Info.plist - **Info**rmation **P**roperty **List**

:information_source: Storyboard consists of:
   * UIStoryboard
   * UIViewController Scene
   * UIStoryboardSegue

:information_source: To create new Single View App:
   * File -> New -> Project... or press **⌘⇧N**
   * Select "Single View App" and press "Next"
   * Enter "Product Name", select appropriate team, enter (if required) Organization Identifier, uncheck all checkboxes and press "Next"
   * Select appropriate folder

:information_source: Main method at AppDelegate.swift - method `application` at class `AppDelegate`

:information_source: UIWindow 
   * https://developer.apple.com/documentation/uikit/uiwindow
   * [Starting an iOS project without storyboard](https://medium.com/@how_noobs_think/starting-an-ios-project-without-storyboard-94c0e618a119)
   * Regular app has three windows at the same time: Main, Status Bar and Alerts.

:information_source: UIColor
   * https://developer.apple.com/documentation/uikit/uicolor
   * [Swift5, Types, Type Inference](https://docs.swift.org/swift-book/ReferenceManual/Types.html)

## Other

* [GitHub Markdown](https://guides.github.com/features/mastering-markdown/)
* [Markdown Emoji](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md)
* [Mac Keyboard Symbols:](https://gist.github.com/Zenexer/c5243c4216f1f8cd2251)
   ⌘ Command, ⇧ Shift, ⌥ Option, ⌃ Control
