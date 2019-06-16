//
//  ViewController.swift
//  L002P003
//
//  Created by Alexey Ozerov on 10/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addBehaviors(behaviors: [HideNavigationBarBehavior()])
    }

    @IBAction func ReturnBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func ExitApp(_ sender: UIButton) {
        print(#function)
        // Calling 'exit' is very bad way to exit (aka crash)
        // exit(-1)

        // Other ways also not welcome by Apple. Use 'Home' button or appropriate swipe gesture instead.
        UIControl().sendAction(
            #selector(URLSessionTask.suspend),
            to: UIApplication.shared,
            for: nil)
    }
}

