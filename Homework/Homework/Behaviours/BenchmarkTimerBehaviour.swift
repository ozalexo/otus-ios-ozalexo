//
//  BenchmarkBehaviour.swift
//  Homework
//
//  Created by Alexey Ozerov on 29.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class BenchmarkTimerBehavior: ViewControllerLifecycleBehavior {

    private var timer: Timer = Timer()

    /*
     Добавить поведение afterAppearing c запуском таймера:
     timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimed), userInfo: nil, repeats: true).
     В runTimed сделайте принт, например так print(Date())
     */
    func afterAppearing(_ viewController: UIViewController) {
        print("Starting timer")
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(runTimed),
            userInfo: nil,
            repeats: true)
    }

    // В runTimed сделайте принт, например так print(Date())
    @objc func runTimed() {
        print("Timer fired at \(Date())")
    }

    // На beforeDisappearing вызвать таймеру invalidate(),
    // чтобы на других экранах он не тикал и не принтил
    func beforeDisappearing(_ viewController: UIViewController) {
        print("Stopping timer")
        timer.invalidate()
    }
}
