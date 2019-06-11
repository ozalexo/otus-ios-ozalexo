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
    
    func setup() {
        let imgView = UIImageView(frame:CGRect(x: 0, y: 0, width: 200, height: 200))
        let img = UIImage(named: "drink.jpg")
        imgView.contentMode = .scaleAspectFit
        imgView.image = img
        view.addSubview(imgView)
        
        let stackView = UIStackView(frame:CGRect(x: 0, y: 0, width: view.frame.width, height: 500))
        stackView.backgroundColor = .green
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .top
        stackView.spacing = 5
        
        let textLabel = UILabel()
        textLabel.backgroundColor = .yellow
        textLabel.text = "Obey!"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textLabel.textAlignment = .center
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(imgView)
        
        view.addSubview(stackView)
//        view.addSubview(textLabel)
    }
}

let vc = MyViewController()
PlaygroundPage.current.liveView = vc
