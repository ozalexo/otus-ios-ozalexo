//
//  ViewController.swift
//  L004P002
//
//  Created by Alexey Ozerov on 17.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!

    // MARK: - Datasource

    private var dataSource: [Algo] = Services.algoProvider.sortings()

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(AlgoCollectionViewCell.nib, forCellWithReuseIdentifier: AlgoCollectionViewCell.reusableID)
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: AlgoCollectionViewCell.reusableID,
            for: indexPath
            ) as? AlgoCollectionViewCell else {
                fatalError("Bad cell")
        }

        let algo = dataSource[indexPath.item]

        cell.update(name: algo.name, color: UIColor.random)

        return cell
    }
    
}
