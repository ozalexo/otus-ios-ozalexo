//
//  VC2ViewController.swift
//  L002P005
//
//  Created by Alexey Ozerov on 27.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class VC2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard segue.identifier == "withRemove",
            let vc = segue.destination as? VC3ViewController else {
                return
        }
        vc.shouldPop2 = true
    }

    @IBAction func pushWithRemoveFromStack () {
        
    }

    @IBAction func pop () {
        navigationController?.popViewController(animated: true)
    }

}
