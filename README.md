# Lesson 001. Practice 003. XIB and Storybook.

## Steps to reproduce

1. [x] Load project L001P002 to continue. [Rename project to L001P003](https://stackoverflow.com/a/35500038).
2. [x] Add new View named 'CoponentView'
3. [x] Modify it
4. [x] Add Label component into ComponentView
5. [x] Add Cocoa Touch Class file for the ComponentView
       Name: ComponentView
       Subclass of: UIView
6. [x] Add the following code to the `ComponentView.swift`

   ```swift
   import UIKit

   class ComponentView: UIView {

      private weak var view: UIView?

      override init(frame: CGRect) {
         super.init(frame: frame)
         configure()
      }

      required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         configure()
      }

      func configure () {
         let bundle = Bundle.main
         let nib = bundle.loadNibNamed("ComponentView", owner: nil, options: nil)
         if let view = nib?[0] as? UIView
         {
            self.view = view // Q: built successfully without this line. Why?
            addSubview(view)
         }
      }

   }
   ```

7. [x] Add `bgColor` custom property into class ComponentView (`ComponentView.swift` file):

   ```swift
    @IBInspectable var bgColor: UIColor = .white {
        didSet {
            view?.backgroundColor = bgColor
        }
    }
   ```

- Result:
  :white_check_mark: Git repo: https://github.com/ozalexo/otus-ios-ozalexo/tree/Lesson/001/Practice/003_XIB_and_Storyboard

## Questions

:question: Why we've set Simuated Metrics -> Size to `Freeform`?

:question: Other ways to obtain main bundle?

:question: What is bundle in context of `ComponentView.swift`?

## Additional information

:information_source:

## Other

- [GitHub Markdown](https://guides.github.com/features/mastering-markdown/)
- [Markdown Emoji](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md)
- [Mac Keyboard Symbols:](https://gist.github.com/Zenexer/c5243c4216f1f8cd2251)
  ⌘ Command, ⇧ Shift, ⌥ Option, ⌃ Control
