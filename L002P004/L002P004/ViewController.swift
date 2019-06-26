//
//  ViewController.swift
//  L002P004
//
//  Created by Alexey Ozerov on 27.06.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldOne: UITextField!
    @IBOutlet var textFieldTwo: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func next() {
        if (!textFieldOne.isFirstResponder && !textFieldTwo.isFirstResponder) {
            print("Initial fR")
            textFieldOne.becomeFirstResponder()
        } else if textFieldOne.isFirstResponder {
            print("one -> two fR")
            textFieldOne.resignFirstResponder()
            textFieldTwo.becomeFirstResponder()
        } else {
            print("two -> one fR")
            textFieldTwo.resignFirstResponder()
            textFieldOne.becomeFirstResponder()

        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        textFieldOne.center = touch.location(in: view)
    }

}

