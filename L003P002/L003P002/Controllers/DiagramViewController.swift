//
//  DiagramViewController.swift
//  L003P002
//
//  Created by Alexey Ozerov on 17.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

final class InfinityScrollBehavior: ViewControllerLifecycleBehavior {

    private var delegate: InfinityScrollable

    init(delegate: InfinityScrollable) {
        self.delegate = delegate
    }

    // MARK: - Life Cycle

    func afterLoading(_ viewController: UIViewController) {
        addImageViews()
    }

    func afterLayingOutSubviews(_ viewController: UIViewController) {
        delegate.scrollViewSize = delegate.scrollView.frame
        delegate.layoutImages()
    }

    func addImageViews() {
        (0..<3).forEach({ i in
            if let img = Service.diagramImageProvider.random() {
                delegate.images.append(img)
                delegate.imageViews[i].image = img
                delegate.scrollView.addSubview(delegate.imageViews[i])
            }
        })
    }
}

protocol InfinityScrollable {

    var images: [UIImage] { get set }
    var imageViews: [UIImageView] { get }

    var scrollView: UIScrollView! { get }
    var scrollViewSize: CGRect { get set }

    func layoutImages()

}

//MARK: - View Controller

final class DiagramViewController: UIViewController, InfinityScrollable {

    var images = [UIImage]()

    lazy var imageViews: [UIImageView] = {
        let imageViews = [
            UIImageView(frame: .zero),
            UIImageView(frame: .zero),
            UIImageView(frame: .zero)
        ]
        imageViews.forEach({ iv in
            iv.contentMode = .scaleAspectFit
        })
        return imageViews
    }()

    var dragging: Bool = false

    @IBOutlet var scrollView: UIScrollView!

    // We need it to make fast calculations
    var scrollViewSize: CGRect = .zero

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        addBehaviors(behaviors: [InfinityScrollBehavior(delegate: self)])
    }

    // MARK: - API

    func layoutImages() {
        imageViews.enumerated().forEach { (index: Int, element: UIImageView) in
            element.image = images[index]
            element.frame = CGRect(
                x: scrollViewSize.width * CGFloat(index),
                y: 0,
                width: scrollViewSize.width,
                height: scrollViewSize.height
            )
        }
    }

}

// MARK: - Delegate

extension DiagramViewController: UIScrollViewDelegate {

}
