//
//  BenchmarkController.swift
//  Homework
//
//  Created by Alexey Ozerov on 04/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class BenchmarkController: UIViewController {

    private var timer: Timer = Timer()

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

    /*
     Добавить поведение afterAppearing c запуском таймера:
     timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimed), userInfo: nil, repeats: true).
     В runTimed сделайте принт, например так print(Date())
     */
    override func viewDidAppear(_ animated: Bool) {
        print("Star timer")
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(runTimed),
            userInfo: nil,
            repeats: true)
    }

    @objc func runTimed() {
        print("Timer fired at \(Date())")
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("Stop timer")
        timer.invalidate()
    }

}
