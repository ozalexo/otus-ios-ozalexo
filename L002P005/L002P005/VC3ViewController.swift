//
//  VC3ViewController.swift
//  L002P005
//
//  Created by Alexey Ozerov on 27.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class VC3ViewController: UIViewController {

    var shouldPop2: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        if shouldPop2 {
            if let controllers = navigationController?.viewControllers {
                let newControllers = controllers.filter { !($0 is VC2ViewController) }
                navigationController?.setViewControllers(newControllers, animated: true)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func pop () {
        navigationController?.popViewController(animated: true)
    }

//    @IBAction func push () {
//        navigationController?.pushViewController(VC2ViewController, animated: true)
//    }

    @IBAction func popToRoot () {
        navigationController?.popToRootViewController(animated: true)
    }
}
