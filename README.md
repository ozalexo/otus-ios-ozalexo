# Lesson 003. Practice 001.

## Additional links
* [Apple: Working with Constraints in Interface Builder](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithConstraintsinInterfaceBuidler.html)
* [How to use Auto Layout with UIScrollView for iOS. 25 Jan 2019](https://www.freecodecamp.org/news/how-to-use-auto-layout-with-uiscrollview-for-ios-b94b8687a4cc/)

# Lesson 003. Practice 002.

## Additional links

### Constraints etc.

* [Apple Doc Archive: Simple Constraints](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithSimpleConstraints.html)
* [Apple Doc Archive: Anatomy of a Constraint](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/AnatomyofaConstraint.html#//apple_ref/doc/uid/TP40010853-CH9-SW1)
* [Introduction to Auto Layout](https://www.appcoda.com/learnswift/auto-layout-intro.html)
* [Auto Layout in iOS: A Comprehensive 7 Steps Roadmap](https://matteomanferdini.com/ios-auto-layout/)
* [Adaptive Layout Tutorial in iOS 12: Getting Started](https://www.raywenderlich.com/1343912-adaptive-layout-tutorial-in-ios-12-getting-started)
* [How to Constrain a Square View with Auto Layout in iOS](https://spin.atomicobject.com/2015/06/03/ios-square-view-auto-layout/)
* [Auto Layout Tutorial (2019) - Lesson 2](https://www.youtube.com/watch?v=emojd8GFB0o)
* [Auto Layout (Lesson 2) Bonus Training](https://www.youtube.com/watch?v=2tqkuGETgXg)

## Questions

1) On scroll diagrams I have the folleoing logs:
2019-07-17 13:00:30.141585+0300 L003P002[63866:928894] [WindowServer] display_timer_callback: unexpected state (now:5e7928411d75 < expected:5e79293a51e7)

   What does it mean? How tio fix?

2) On scrolling and changing layout at the same time we have incorrect state (see gif). What is going on?

   Steps to reproduce (simulator):

      - Start dragging image and hold mouse button pressed
      - At hte same time press "Rotate simulator screen" button (or CMD + right/left arrow)
      - Sometimes (not always) after changing layout we can see two images at the same time (half of each)

   Is there a way to prevent it?

   ![3](https://user-images.githubusercontent.com/661889/61369577-13f81980-a899-11e9-8137-d1cc2dd4ec51.gif)