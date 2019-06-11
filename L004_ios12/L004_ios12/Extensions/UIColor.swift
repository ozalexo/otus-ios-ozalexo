//
//  UIColor.swift
//  L004_ios12
//
//  Created by Alexey Ozerov on 11/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1
        )
    }
}
