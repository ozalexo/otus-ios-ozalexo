//
//  ComponentView.swift
//  L001P003
//
//  Created by Alexey Ozerov on 31/05/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class ComponentView: UIView {
    
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

    func configure () {
        let bundle = Bundle.main
        let nib = bundle.loadNibNamed("ComponentView", owner: nil, options: nil)
        if let view = nib?[0] as? UIView
        {
            self.view = view // Q: built successfully without this line. Why?
            addSubview(view)
        }
    }

}
