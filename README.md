# Lesson 001. Practice 002. Storybook. @IBInspectable / @IBDesignable.

## Steps to reproduce
1. [x] Create new Single View App. 
1. [x] Add second ViewController: `ViewController2`
1. [x] Add Button to `ViewController1`
1. [x] Create segue between `ViewController1.Button` and `ViewController2`
1. [x] Add NavigationControl
1. [x] Add class `ColorButton` and set Button's owner via Identity Inspector
1. [x] Add custom properties `bgColor` and `cornerRadius` to the ColorButton class
1. [x] Modify custom Button's props on Storyboard

* Result:
:white_check_mark: Git repo: https://github.com/ozalexo/otus-ios-ozalexo/tree/Lesson/001/Practice/002_Storyboard


## Questions

:question: To clarify `.nib` and `.storyboardc` file formats

:question: To read more about FirstResponder

:question: @IBOutlet Need to clarify.

:question: @IBAction Need to clarify.

:question: How t owork with Assistant editor?


## Additional information

:information_source: [Apple Developer: Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

:information_source: @IBInspectable properties provide new access to an old feature: user-defined runtime attributes. 

:information_source: @IBDesignable designation lets Interface Builder know that it should render the view directly in the canvas. This allows seeing how your custom views will appear without building and running your app after each change.

:information_source: Debug with Storybook: you may change "Initial View" to start app from selected screen (if you do not need previous contoller's ierarchy).

:information_source: Common structure: View -> Layer -> Sublayer

:information_source: Add class to the Button component
   * File -> New -> New File...
   * Select "Cocoa Touch Class" and press "Next"
   * "Name": ColorButton, "Subclass of": UIButton
   * Modify `ColoButton.swift` file:
      ```swift
      //
      //  ColorButton.swift
      //  L001P002
      //
      //  Created by Alexey Ozerov on 29/05/2019.
      //  Copyright © 2019 Alexey Ozerov. All rights reserved.
      //

      import UIKit

      @IBDesignable final class ColorButton: UIButton {
          
          @IBInspectable var bgColor: UIColor = .white {
              didSet {
                  backgroundColor = bgColor
              }
          }
          
          @IBInspectable var cornerRadius: CGFloat = 0 {
              didSet {
                  layer.cornerRadius = cornerRadius
                  // Q: What is that? Did not see any changes on Storyboard.
                  layer.masksToBounds = cornerRadius > 0
              }
          }
          
      }
      ```
   * Set Button's owner to `ColorButton` class via Identity Inspector

:information_source: Formats:
   * .xib -> .nib
   * .storyboard -> .storyboardc

:information_source: Frames and bounds: bounds inside frames.

:information_source: Storyboard. To make a copy a a component press ⌥ and drag a component.

## Other

* [GitHub Markdown](https://guides.github.com/features/mastering-markdown/)
* [Markdown Emoji](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md)
* [Mac Keyboard Symbols:](https://gist.github.com/Zenexer/c5243c4216f1f8cd2251)
   ⌘ Command, ⇧ Shift, ⌥ Option, ⌃ Control
