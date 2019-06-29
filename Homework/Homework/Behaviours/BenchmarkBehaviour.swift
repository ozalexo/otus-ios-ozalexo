//
//  BenchmarkBehaviour.swift
//  Homework
//
//  Created by Alexey Ozerov on 29.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

protocol BenchmarkBehaviour {
    func afterLoading(_ viewController: UIViewController)

    func beforeAppearing(_ viewController: UIViewController)

    func afterAppearing(_ viewController: UIViewController)

    func beforeDisappearing(_ viewController: UIViewController)

    func afterDisappearing(_ viewController: UIViewController)

    func beforeLayingOutSubviews(_ viewController: UIViewController)

    func afterLayingOutSubviews(_ viewController: UIViewController)
}

extension BenchmarkBehaviour {

    func afterLoading(_ viewController: UIViewController) {}

    func beforeAppearing(_ viewController: UIViewController) {}

    func afterAppearing(_ viewController: UIViewController) {}

    func beforeDisappearing(_ viewController: UIViewController) {}

    func afterDisappearing(_ viewController: UIViewController) {}

    func beforeLayingOutSubviews(_ viewController: UIViewController) {}

    func afterLayingOutSubviews(_ viewController: UIViewController) {}
}

class BenchmarkTimerBehavior: BenchmarkBehaviour {

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

extension BenchmarkController {

    func addBehaviors(behaviors: [BenchmarkBehaviour]) {
        let behaviorViewController = BenchmarkBehaviorViewController(behaviors: behaviors)

        addChild(behaviorViewController)
        view.addSubview(behaviorViewController.view)
        behaviorViewController.didMove(toParent: self)
    }

    private final class BenchmarkBehaviorViewController: UIViewController {
        private let behaviors: [BenchmarkBehaviour]
        private var timer: Timer = Timer()

        // MARK: - Initialization

        init(behaviors: [BenchmarkBehaviour]) {
            self.behaviors = behaviors

            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        // MARK: - UIViewController

        override func viewDidLoad() {
            super.viewDidLoad()

            // Why we need it here?
            view.isHidden = true

            applyBehaviors { behavior, viewController in
                behavior.afterLoading(viewController)
            }
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)

            applyBehaviors { behavior, viewController in
                behavior.beforeAppearing(viewController)
            }
        }

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)

            applyBehaviors { behavior, viewController in
                behavior.afterAppearing(viewController)
            }
        }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)

            applyBehaviors { behavior, viewController in
                behavior.beforeDisappearing(viewController)
            }
        }

        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)

            applyBehaviors { behavior, viewController in
                behavior.afterDisappearing(viewController)
            }
        }

        override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()

            applyBehaviors { behavior, viewController in
                behavior.beforeLayingOutSubviews(viewController)
            }
        }

        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()

            applyBehaviors { behavior, viewController in
                behavior.afterLayingOutSubviews(viewController)
            }
        }

        // MARK: - Private

        private func applyBehaviors(body: (_ behavior: BenchmarkBehaviour, _ viewController: UIViewController) -> ()) {
            guard let parentViewController = parent else { return }

            for behavior in behaviors {
                body(behavior, parentViewController)
            }
        }
    }

}


