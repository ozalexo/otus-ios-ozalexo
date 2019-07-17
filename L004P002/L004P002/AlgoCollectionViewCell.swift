//
//  AlgoCollectionViewCell.swift
//  L004P002
//
//  Created by Alexey Ozerov on 17.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

class AlgoCollectionViewCell: UICollectionViewCell {

    static let reusableID = String(describing: AlgoCollectionViewCell.self)
    static let nib = UINib(
        nibName: String(describing: AlgoCollectionViewCell.self),
        bundle: nil
    )

    @IBOutlet var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func update(name: String, color: UIColor) {
        nameLabel.text = name
        backgroundColor = color
    }

}
