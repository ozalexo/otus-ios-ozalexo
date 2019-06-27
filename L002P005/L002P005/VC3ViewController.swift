//
//  VC3ViewController.swift
//  L002P005
//
//  Created by Alexey Ozerov on 27.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class VC3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
