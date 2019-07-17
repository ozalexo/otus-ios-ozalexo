//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
    }

    override func viewDidLayoutSubviews() {
        setup()
    }

    func setup () {

        // Image
        let imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let img = UIImage(named: "owl.jpg")
        imgView.contentMode = .scaleAspectFit
        imgView.image = img

        // Text label
        let textLabel = UILabel()
        textLabel.backgroundColor = .yellow
        textLabel.text = "ThinKong owl"
//        textLabel.translatesAutoresizingMaskIntoConstraints = true
        textLabel.widthAnchor.constraint(equalToConstant: 400).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        textLabel.textAlignment = .center

        // Stack
        let stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 400))
        stackView.backgroundColor = .green
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.spacing = 5

        stackView.addArrangedSubview(imgView)
        stackView.addArrangedSubview(textLabel)

        view.addSubview(stackView)

    }
}

// To be able to test with different sizes (a.k.a. different iPhones)
let vc = MyViewController()
PlaygroundPage.current.liveView = vc
