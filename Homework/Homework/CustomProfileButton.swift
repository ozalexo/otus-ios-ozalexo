//
//  ProfileTabVC.swift
//  Homework
//
//  Created by Alexey Ozerov on 04/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

@IBDesignable final class CustomProfileButton: UIButton {
    
    @IBInspectable var bgColor: UIColor = .white {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable var brdWidth: CGFloat = 1 {
        didSet {
            layer.borderWidth = brdWidth
        }
    }
    
    @IBInspectable var brdColor: UIColor = .blue {
        didSet {
            layer.borderColor = brdColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            // Q: What is that? Did not see any changes on Storyboard.
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}

