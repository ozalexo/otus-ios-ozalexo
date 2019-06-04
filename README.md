# Homework 001

1. [x] Create new Single View App
1. [x] Add `UISplitViewController` (see "issue" 2 below)
1. [x] Add `TabBarViewController` to `UISplitViewController` as master
1. [x] Add new `ViewController` as 3rd tab to `TabBarViewController`
1. [x] Add `NavigationViewController` to each tab
1. [x] Add `ViewController` to each `NavigationViewController` (segues' identifier required, see "issue" 1 below)
1. [x] Add some UIView's children to all tabs (UILabel, UIImageView, UISwitch, UIButton)
1. [x] Profile Tab: add custom UIButton with @IBInspectable/@IBDesignable
1. [x] Add to `UISplitViewController` aditional `NavigationViewController` and link it as details
1. [x] Add XIB conponent with custom props
1. [x] Add XIB component to secondary storyboard

- Result:
  :white_check_mark: Git repo: https://github.com/ozalexo/otus-ios-ozalexo/tree/Lesson/001/Homework

## Resolved "issues"

1. Main.storyboard: warning: Unsupported Configuration: Segues initiated directly from view controllers must have an identifier

   **Solution:** Select appropriate segue and fill `Identifier` field at `Attributes` inspector

2. Main.storyboard: warning: Unsupported Configuration: “Split View Controller“ is unreachable because it has no entry points, and no identifier for runtime access via -[UIStoryboard instantiateViewControllerWithIdentifier:].

   **Solution:** Select `Split View Controller` scene and check `Is Initial View Controller` checkbox at `Attributes` inspector

3. No components on tabs

   **Solution:** Replaced segues between `NavigationViewController` and `ViewController` from `show` to `root view controller`

4. ![Screenshot 2019-06-04 at 04 37 29](https://user-images.githubusercontent.com/661889/58845082-7d71ef00-8682-11e9-8f5d-988f9abdee2c.png)

   **Solution:** Deleted `*.xib` and `*.swift` of XIB component. Removed View from storyboard and recreated XIB component from scratch wuth different file names.

## Questions

:question: 1. Why there is no title?

:question: 2. I did not delete SafeArea. Why it does not work as expected?

![Screenshot 2019-06-04 at 04 33 06](https://user-images.githubusercontent.com/661889/58844949-fae92f80-8681-11e9-880b-d10093d0f37e.png)

## Additional info

:information_source: [How to add new tab item](http://www.albertgao.xyz/2017/12/14/how-to-add-item-for-tab-bar-controller/)

:information_source: [Display Alert iOS Tutorial](https://www.ioscreator.com/tutorials/display-alert-ios-tutorial)

:information_source: Useful reading: [Creating iOS custom views in UIKit](https://www.scalablepath.com/blog/creating-ios-custom-views-uikit/)

:information_source: Useful reading: [Customising UIAlertController in Swift](https://medium.com/@sahil__khanna/customising-uialertcontroller-in-swift-8eb184118d8b)
