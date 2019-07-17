//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
    }

    override func viewDidLayoutSubviews() {
        setup()
    }

    func setup () {

        let imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let img = UIImage(named: "owl.jpg")
        imgView.contentMode = .scaleAspectFit
        imgView.image = img
        view.addSubview(imgView)

    }
}

// To be able to test with different sizes (a.k.a. different iPhones)
let vc = MyViewController()
PlaygroundPage.current.liveView = vc
