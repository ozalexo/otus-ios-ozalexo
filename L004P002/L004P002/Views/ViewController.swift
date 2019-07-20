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

    @objc func changeLayout() {
        collectionView.setCollectionViewLayout(
            StagLayout(widthHeightRatios: [(1.0, 1.0), (0.5, 0.5), (0.5, 1.5), (0.5, 1.0)], itemSpacing: 4),
            animated: true
        )
    }

    // MARK: - Datasource

    private var dataSource: [Algo] = Services.algoProvider.sortings()

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(AlgoCollectionViewCell.nib, forCellWithReuseIdentifier: AlgoCollectionViewCell.reusableID)
        changeLayout()

        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .refresh,
            target: self,
            action: #selector(changeLayout)
        )
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    /// Bad implementation: calling each time on scroll, to be improved
    ///
    /// - Parameters:
    ///   - collectionView: UICollectionView
    ///   - indexPath: cell's index
    /// - Returns: UICollectionViewCell
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
