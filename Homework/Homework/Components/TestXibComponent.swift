//
//  TestXibComponent.swift
//  Homework
//
//  Created by Alexey Ozerov on 04/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class TestXibComponent: UIView {

    private weak var view: UIView?
    
    @IBInspectable var bgColor: UIColor = .white {
        didSet {
            view?.backgroundColor = bgColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    private func configure () {
        let bundle = Bundle.main
        let nib = bundle.loadNibNamed("TestXibComponent", owner: nil, options: nil)
        if let view = nib?[0] as? UIView
        {
            self.view = view
            addSubview(view)
        }
    }

}
