//
//  DiagramViewController.swift
//  L003P002
//
//  Created by Alexey Ozerov on 17.07.2019.
//  Copyright © 2019 Alexey Ozerov. All rights reserved.
//

import UIKit

protocol InfinityScrollable {

    var images: [UIImage] { get set }
    var imageViews: [UIImageView] { get }

    var scrollView: UIScrollView! { get }
    var scrollViewSize: CGRect { get set }

    func addImageViews()

    func layoutImages()

}

// MARK: - Behavior

final class InfinityScrollBehavior: ViewControllerLifecycleBehavior {

    private var delegate: InfinityScrollable

    init(delegate: InfinityScrollable) {
        self.delegate = delegate
    }

    // MARK: - Life Cycle

    func afterLoading(_ viewController: UIViewController) {
        delegate.addImageViews()
    }

    func afterLayingOutSubviews(_ viewController: UIViewController) {
        delegate.scrollViewSize = delegate.scrollView.frame
        delegate.scrollView.contentSize = CGSize(
            width: delegate.scrollViewSize.width * 3,
            height: delegate.scrollViewSize.height
        )
        delegate.scrollView.contentOffset = CGPoint(
            x: delegate.scrollViewSize.width,
            y: 0
        )
        delegate.layoutImages()
    }
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

    func addImageViews() {
        (0..<3).forEach({ i in
            if let img = Service.diagramImageProvider.random() {
                images.append(img)
                imageViews[i].image = img
                scrollView.addSubview(imageViews[i])
            }
        })
    }

}

// MARK: - Delegate

extension DiagramViewController: UIScrollViewDelegate {

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        dragging = false
    }

    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        dragging = true
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if !dragging {
            return
        }

        let offsetX = scrollView.contentOffset.x

        // Right scrolling direction
        if (offsetX > scrollView.frame.size.width * 1.5) {
            if let newImage = Service.diagramImageProvider.random() {
                images.remove(at: 0)
                images.append(newImage)
                layoutImages()
                scrollView.contentOffset.x -= scrollViewSize.width
            }
        }
         // Left scrolling direction
        if (offsetX < scrollView.frame.size.width * 0.5) {
            if let newImage = Service.diagramImageProvider.random() {
                images.removeLast()
                images.insert(newImage, at: 0)
                layoutImages()
                scrollView.contentOffset.x += scrollViewSize.width
            }
        }

    }

}
