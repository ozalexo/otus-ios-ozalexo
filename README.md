# Lesson 002 Preservation и Restoration техники, стек UINavigationController, Life cycles

## Homework

- [x] Create new Single View app
- [x] Add some traces into AppDelegate methods's and start/stop app in sim
- [x] Add `willFinishLaunchingWithOptions` method
- [x] Check existing `didFinishLaunchingWithOptions` (autocreated with Single View App)
- [x] Check existing `applicationWillEnterForeground` (autocreated with Single View App)
- [x] Check existing `applicationDidBecomeActive` (autocreated with Single View App)
- [x] Check existing `applicationWillResignActive` (autocreated with Single View App)
- [x] Check existing `applicationDidEnterBackground` (autocreated with Single View App)
- [x] Check existing `applicationWillTerminate` (autocreated with Single View App)

* Result:
  :white_check_mark: Git repo: https://github.com/ozalexo/otus-ios-ozalexo/tree/Lesson/002/Homework

## Practice 001

### Steps

- [x] Create new Single View app
- [x] Add some trace into AppDelegate methods's and start/stop app in sim
- [x] Add `willFinishLaunchingWithOptions` method
- [x] Check existing `didFinishLaunchingWithOptions` (autocreated with Single View App)
- [x] Check existing `applicationWillEnterForeground` (autocreated with Single View App)
- [x] Check existing `applicationDidBecomeActive` (autocreated with Single View App)
- [x] Check existing `applicationWillResignActive` (autocreated with Single View App)
- [x] Check existing `applicationDidEnterBackground` (autocreated with Single View App)
- [x] Check existing `applicationWillTerminate` (autocreated with Single View App)

* Result:
  :white_check_mark: Git repo: https://github.com/ozalexo/otus-ios-ozalexo/tree/Lesson/002/Practice/001_AppLifeCycle 

- [x] Additionally: to read details and compare life cycles "ios 12" and "ios 13":

   #### LifeCycle Schemas

   | In iOS 12 and earlier  | In iOS 13 and later |
   | ------------- | ------------- |
   | [The `UIApplicationDelegate` object](https://developer.apple.com/documentation/uikit/uiapplicationdelegate) ![ios12](https://user-images.githubusercontent.com/661889/59208717-5485b880-8bb2-11e9-8778-9746acabe972.png) | [The `UIWindowSceneDelegate` object (`UISceneDelegate` sub-protocol)](https://developer.apple.com/documentation/uikit/uiscenedelegate) ![ios13](https://user-images.githubusercontent.com/661889/59208722-58193f80-8bb2-11e9-8cd9-0c1febd71aee.png) |

   #### Not running / Unattached
   | In iOS 12 and earlier  | In iOS 13 and later |
   | ------------- | ------------- |
   | **Not running**<br>[application( _:willFinishLaunchingWithOptions: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623032-application)<br>[application( _:didFinishLaunchingWithOptions: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622921-application)<br><br>| **Unattached**<br>[application( _:willFinishLaunchingWithOptions: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623032-application)<br>[application( _:didFinishLaunchingWithOptions: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622921-application)<br>[application( _:configurationForConnecting:options: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3197905-application) |

   When the user or system requests a new scene for your app, UIKit creates it and puts it in the unattached state.<br>UIKit can disconnect a background or suspended scene at any time to reclaim its resources, returning that scene to the unattached state.<br><br>   * `User-requested scenes` move quickly to the foreground, where they appear onscreen.<br>   * `A system-requested scene` typically moves to the background so that it can process an event.

   #### Inactive / Foreground Inactive
   | In iOS 12 and earlier  | In iOS 13 and later |
   | ------------- | ------------- |
   | **Inactive**<br>[applicationDidBecomeActive( _: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622956-applicationdidbecomeactive) | **Foreground Inactive**<br>[sceneDidBecomeActive( _: )](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197915-scenedidbecomeactive)
   
   Activation is a good time to configure your app’s UI and runtime behavior; specifically:<br>- Show your app’s windows, if needed.<br>- Change the currently visible view controller, if needed.<br>- Update the data values and state of views and controls.<br>- Display controls to resume a paused game.<br>- Start or resume any dispatch queues that you use to execute tasks.<br>- Update data source objects.<br>- Start timers for periodic tasks.<br><br>_Don’t run any code that might block your activation method._ Instead, make sure you have everything you need in advance.<br>For example, if your data changes frequently outside of the app, use background tasks to fetch updates from the network before your app returns to the foreground.<br>Otherwise, be prepared to display existing data while you fetch changes asynchronously.

   #### Active / Foreground Active
   | In iOS 12 and earlier  | In iOS 13 and later |
   | ------------- | ------------- |
   | **Active**<br>[applicationWillResignActive( _: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622950-applicationwillresignactive) | **Foreground Active**<br>[sceneWillResignActive( _: )](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197919-scenewillresignactive) |
   
   Use deactivation to preserve the user’s data and put your app in a quiet state by pausing all major work; specficially:<br>- Save user data to disk and close any open files.<br>- Suspend dispatch and operation queues.<br>- Don’t schedule any new tasks for execution.<br>- Invalidate any active timers.<br>- Pause gameplay automatically.

   #### Background / Background
   | In iOS 12 and earlier  | In iOS 13 and later |
   | ------------- | ------------- |
   | **Background**<br> [applicationWillEnterForeground( _: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623076-applicationwillenterforeground)<br>[applicationDidEnterBackground( _: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622997-applicationdidenterbackground) | **Background**<br> [sceneWillEnterForeground( _: )](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197918-scenewillenterforeground)<br>[sceneDidEnterBackground( _: )](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197917-scenedidenterbackground)|

   During a background transition, perform as many of the following tasks as makes sense for your app:<br>- Discard any images or media that you read directly from files.<br>- Discard any large, in-memory objects that you can recreate or reload from disk.<br>- Release access to the camera and other shared hardware resources.<br>- Hide sensitive information (such as passwords) in your app’s user interface.<br>- Dismiss alerts and other temporary interfaces.<br>- Close connections to any shared system databases.<br>- Unregister from Bonjour services and close any listening sockets associated with them.<br><br>Apps don’t normally receive any extra execution time after they enter the background. However, UIKit does grant execution time to apps that support any of the following time-sensitive capabilities:<br>- Audio communication using AirPlay, or Picture in Picture video.<br>- Location-sensitive services for users.<br>- Voice over IP.<br>- Communication with an external accessory.<br>- Communication with Bluetooth LE accessories, or conversion of the device into a Bluetooth LE accessory.<br>- Regular updates from a server.<br>- Support for Apple Push Notification service (APNs).<br><br>[About the Background Execution Sequence](https://developer.apple.com/documentation/uikit/app_and_scenes/preparing_your_ui_to_run_in_the_background/about_the_background_execution_sequence)

   #### Suspended / Suspended
   | In iOS 12 and earlier  | In iOS 13 and later |
   | ------------- | ------------- |
   | **Suspended**<br>[applicationWillTerminate( _: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623111-applicationwillterminate) | **Suspended**<br>[applicationWillTerminate( _: )](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623111-applicationwillterminate) |
   
   `applicationWillTerminate( _: )` method lets your app know that it is about to be terminated and purged from memory entirely. You should use this method to perform any final clean-up tasks for your app, such as freeing shared resources, saving user data, and invalidating timers. Your implementation of this method has approximately five seconds to perform any tasks and return. If the method does not return before time expires, the system may kill the process altogether.<br><br>For apps that do not support background execution or are linked against iOS 3.x or earlier, this method is always called when the user quits the app. For apps that support background execution, this method is generally not called when the user quits the app because the app simply moves to the background in that case. However, this method may be called in situations where the app is running in the background (not suspended) and the system needs to terminate it for some reason.<br><br>After calling this method, the app also posts a `willTerminateNotification` notification to give interested objects a chance to respond to the transition.

### Additional info

:information_source: Detailed schema of an App Lifecycle:
![main-qimg-473264d5d9f0ec16d57b8dffcc9824d8](https://user-images.githubusercontent.com/661889/59185873-31d7ad80-8b7a-11e9-814b-935f0c2815ad.jpeg)

:information_source: ["Proper" way to exit app programmatically](https://hackjutsu.com/2016/01/05/Proper%20way%20to%20quit%20iOS%20application/)

:information_source: AppDelegate: application main - singleton of class Application and class AppDelegate.

:information_source: To copy method's signature in XCode: set mouse cursor on a method's name and press ⇧⌃⌘C then insert copied signature somewhere.

:information_source: Typical usage of `willFinishLaunchingWithOptions`: if app launch reason is to open URL we do not need to restore whole app's state. So here we may decide, what to do (what to restore).

:information_source: [How to work with old and new lifecycles](https://stackoverflow.com/a/56508769)

## Questions

:question: How to use willFinishLaunchingWithOptions? I don't want just copy-paste it from lessons's example. Need to dig it out.

[Search at Apple's Developer Docs](https://developer.apple.com/search/?q=willFinishLaunchingWithOptions]): "No results were found. Please try a different keyword". Very funny.

**Answer:** type `func willFinishLaunchingWithOption` and wait for XCode autocompletition.

:question: XCode 11 beta. New "Single View App" project (with `Swift UI` checkbox) generates two files `AppDelegate.swift` and `SceneDelegate.swift`. Need to understand how it works (in parallel or step-by-step, depneds on ios version or not etc.)

**Answer:** First of all, AppDelegate's methods `willFinishLaunchingWithOption` and `didFinishLaunchingWithOptions`, then `sceneWIllEnterForeground` etc.

## Links

- [App State Restoration in iOS — 1](https://medium.com/swift-india/app-state-restoration-in-ios-1-bbc903f17a46)
- [The iOS Application Lifecycle](https://hackernoon.com/application-life-cycle-in-ios-12b6ba6af78b)
- [The ultimate guide to Timer](https://www.hackingwithswift.com/articles/117/the-ultimate-guide-to-timer)
- [Preserving Your App's UI Across Launches | Apple Developer Documentation](https://developer.apple.com/documentation/uikit/view_controllers/preserving_your_app_s_ui_across_launches)
- [Xcode - SwiftUI- Apple Developer](https://developer.apple.com/xcode/swiftui/)

## Homework

Добавление в прототипа приложения Restoration
Цель: – Практически изучить App Life Cycle для использования это в сохранении и восстановлении данных – Научится использовать View controller lifecycle behaviors для того чтобы контролировать экран на каждой стадии – Научимся модифицировать NavigationController стек, для нелинейных переходов в приложениии

1. В AppDelegate реализовать методы App Life Cycle и расставить в них print c названиями стадий или функций

   - 1.1. Для стадии запуска(Launching) приложения:
     - 1.1.1. application: willFinishLaunchingWithOptions
     - 1.1.2. application: didFinishLaunchingWithOptions
     - 1.1.3. applicationWillEnterForeground
     - 1.1.4. applicationDidBecomeActive
   - 1.2. Для стадии выключения(Terminating) приложения:
     - 1.2.1. applicationWillResignActive
     - 1.2.2. applicationDidEnterBackground
     - 1.2.3. applicationWillTerminate

2. Реализовать View controller lifecycle behaviors для вью контоллера Benchmark

   - 2.1 Добавить поведение afterAppearing c запуском таймера:
     timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimed), userInfo: nil, repeats: true)
     В runTimed сделайте принт, например так print(Date())
   - 2.2. На beforeDisappearing вызвать таймеру invalidate() чтобы на других экранах он не тикал и не принтил

3. На ViewController таба Profile

   - 3.1. Написать поведение со сменой цвета статус бара и view.backgroundColor на черный

4. На ViewController(первом) таба Feed сделать кнопку
   - 4.1 По кнопке пушить новый ViewController(второй)
   - 4.2 На новом ViewController добавить еще одну кнопку и по ней показать третий ViewController
   - 4.3 Реализовать переход с третьего ViewController на первый

## Other

- [GitHub Markdown](https://guides.github.com/features/mastering-markdown/)
- [Markdown Emoji](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md)
- [Mac Keyboard Symbols:](https://gist.github.com/Zenexer/c5243c4216f1f8cd2251) ⌘ Command, ⇧ Shift, ⌥ Option, ⌃ Control
