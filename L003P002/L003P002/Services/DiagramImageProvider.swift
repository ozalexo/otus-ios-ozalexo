//
//  DiagramImageProvider.swift
//  L003P002
//
//  Created by Alexey Ozerov on 17.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

final class DiagramImageProvider {

    func random() -> UIImage? {
        let index = Int.random(in: 0..<11)
        return UIImage(named: "bar-chart-\(index)")
    }
}
