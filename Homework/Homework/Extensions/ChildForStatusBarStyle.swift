//
//  StatusBar.swift
//  Homework
//
//  Created by Alexey Ozerov on 01.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

/*
 We definitely need this. Can't change status bar stayle without childForStatusBarStyle
 */

extension UINavigationController {
    override open var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}

extension UITabBarController {
    override open var childForStatusBarStyle: UIViewController? {
        return selectedViewController
    }
}

extension UISplitViewController {
    override open var childForStatusBarStyle: UIViewController? {
        return viewControllers.first
    }
}
