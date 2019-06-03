//
//  ColorButton.swift
//  L001P004
//
//  Created by Alexey Ozerov on 29/05/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

@IBDesignable final class ColorButton: UIButton {
    
    @IBInspectable var bgColor: UIColor = .white {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            // Q: What is that?
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
