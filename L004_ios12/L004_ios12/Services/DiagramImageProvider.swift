//
//  DiagramImageProvider.swift
//  L004_ios12
//
//  Created by Alexey Ozerov on 11/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

final class DiagramImageProvider {
    
    func random() -> UIImage? {
        let index = Int.random(in: 1..<12)
        return UIImage(named: "diagram_\(index)")
    }
    
}

