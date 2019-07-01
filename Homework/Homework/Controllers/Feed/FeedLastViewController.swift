//
//  FeedLastViewController.swift
//  Homework
//
//  Created by Alexey Ozerov on 01.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class FeedLastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Feed: Last View (top)"
    }

    // Used this article to get info about unwind segues:
    // https://matteomanferdini.com/unwind-segue/#programmatically

    @IBAction func GoToRoot(_ sender: UIButton) {
        print("FeedLastViewController: Perform unwind segue")
        performSegue(withIdentifier: "unwind", sender: nil)
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
