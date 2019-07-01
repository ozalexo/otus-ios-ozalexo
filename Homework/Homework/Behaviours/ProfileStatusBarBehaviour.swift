//
//  ProfileBehaviour.swift
//  Homework
//
//  Created by Alexey Ozerov on 29.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

struct ProfileStatusBarBehaviour: ViewControllerLifecycleBehavior {

    func afterAppearing(_ viewController: UIViewController) {
        print("Profile afterAppearing: changing background color to black")
        viewController.view.backgroundColor = .black
        // Set StatusBar's style from life cycle methods.
        if viewController is ProfileController {
            (viewController as! ProfileController).toggleStatusBarStyle()
        }
    }

    func beforeDisappearing(_ viewController: UIViewController) {
        print("Profile beforeDisappearing: changing background color to white")
        viewController.view.backgroundColor = .white
        // Set StatusBar's style from life cycle methods.
        if viewController is ProfileController {
            (viewController as! ProfileController).toggleStatusBarStyle()
        }
    }
}

