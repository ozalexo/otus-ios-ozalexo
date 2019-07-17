//
//  DiagramViewController.swift
//  L003P002
//
//  Created by Alexey Ozerov on 17.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

final class InfinityScrollBehavior: ViewControllerLifecycleBehavior {

    private var target: InfinityScrollable

    init(target: InfinityScrollable) {
        self.target = target
    }

}

protocol InfinityScrollable {

    var scrollView: UIScrollView! { get }

}

//MARK: - View Controller

final class DiagramViewController: UIViewController, InfinityScrollable {

    @IBOutlet var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        addBehaviors(behaviors: [InfinityScrollBehavior(target: self)])
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

extension DiagramViewController: UIScrollViewDelegate {

}
