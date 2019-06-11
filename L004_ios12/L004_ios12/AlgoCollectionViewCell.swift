//
//  AlgoCollectionViewCell.swift
//  L004_ios12
//
//  Created by Alexey Ozerov on 11/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class AlgoCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = String(describing: AlgoCollectionViewCell.self)
    static let nib = UINib(
        nibName: String(describing: AlgoCollectionViewCell.self),
        bundle: nil
    ) // bundle may be main

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func update(name: String, color: UIColor) {
        nameLabel.text = name
        backgroundColor = color
    }
    
}
