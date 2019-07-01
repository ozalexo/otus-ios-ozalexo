//
//  ProfileController.swift
//  Homework
//
//  Created by Alexey Ozerov on 29.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    var currentStatusbarStyle = UIStatusBarStyle.default

    override func viewDidLoad() {
        super.viewDidLoad()
        addBehaviors(behaviors: [ProfileStatusBarBehaviour()])
    }

    var isDark = false {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return isDark ? .lightContent : .default
    }

    func toggleStatusBarStyle() {
        if isDark {
            print("Toggling StatusBar theme from Dark to Light")
        } else {
            print("Toggling StatusBar theme from Light to Dark")
        }
        isDark.toggle()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
