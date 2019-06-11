//
//  CollectionBehavior.swift
//  L004_ios12
//
//  Created by Alexey Ozerov on 11/06/2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

final class CollectionViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    private var dataSource: [Algo] = Services.algoProvider.sortings()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        collectionView.register(
            AlgoCollectionViewCell.nib,
            forCellWithReuseIdentifier: AlgoCollectionViewCell.reuseID
        )
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .refresh,
            target: self,
            action: #selector(changeLayout)
        )
        
    }
    
    @IBAction func Relayout(_ sender: UIBarButtonItem) {
        changeLayout()
    }
    @objc func changeLayout() {
        print("change")

        collectionView.setCollectionViewLayout(StagLayout(widthHeightRatios: [(1.0, 1.0), (0.5, 0.5), (0.5, 1.5), (0.5, 1.0)], itemSpacing: 4), animated: true)
    }
    
}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlgoCollectionViewCell.reuseID, for: indexPath) as? AlgoCollectionViewCell else {
            fatalError("Bad cell") // Bad practice
        }
        
        let algo = dataSource[indexPath.item]
        
        cell.update(name: algo.name, color: UIColor.random)
        return cell
    }
    
    
}
