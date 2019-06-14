//
//  ViewController.swift
//  L002P002
//
//  Created by Alexey Ozerov on 10/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print(#function)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
        // Here we may start an animation
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
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

