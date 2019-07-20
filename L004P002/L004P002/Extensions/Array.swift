//
//  Array.swift
//  L004P002
//
//  Created by Alexey Ozerov on 20/07/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import Foundation

extension Array {
    subscript (safe index: Int) -> Element? {
        return Int(index) < count ? self[Int(index)] : nil
    }
}
