//
//  BenchmarkController.swift
//  Homework
//
//  Created by Alexey Ozerov on 04/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class BenchmarkController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addBehaviors(behaviors: [BenchmarkTimerBehavior()])
    }

    @IBAction func showAlert(_ sender: Any) {
        // copy-paste from https://www.ioscreator.com/tutorials/display-alert-ios-tutorial
        let alertController = UIAlertController(
            title: "Homework",
            message: "No benchmark available!",
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(
            title: "Dismiss",
            style: .default
        ))
        
        self.present(
            alertController,
            animated: true,
            completion: nil
        )
    }

}
