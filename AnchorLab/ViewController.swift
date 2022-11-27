import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
    }
    
    func setupViews(){
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        let lowerLeft = makeSecondaryLabel(withText: "lowerLeft")
        let button = makeButton(withText: "Pay Bill")
        let redView = makeView()
        let smallLabel = sizeMakeLabel(withText: "small", size: 12)
        let largeLabel = sizeMakeLabel(withText: "large", size: 32)
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(lowerLeft)
        view.addSubview(button)
        view.addSubview(redView)
        view.addSubview(smallLabel)
        view.addSubview(largeLabel)
        
        //small
        smallLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor ,constant: 32).isActive = true
        smallLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        //large
        largeLabel.topAnchor.constraint(equalTo: smallLabel.topAnchor).isActive = true
//        largeLabel.centerYAnchor.constraint(equalTo: smallLabel.centerYAnchor).isActive = true
//        largeLabel.firstBaselineAnchor.constraint(equalTo: smallLabel.firstBaselineAnchor).isActive = true
        largeLabel.leadingAnchor.constraint(equalTo: smallLabel.trailingAnchor, constant: 8).isActive = true

        //Upper
        //Left
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor ,constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        //Right
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        //Lower
        //Left
        lowerLeft.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        lowerLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        //Right
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        //View
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //Option 1: Size explicitly
//        redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        //Option 2: Size dynamically (pinning)
        //width
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        //height
        redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
    }

    func makeLabel(withText text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // important
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.text = text
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        
        return button
    }
    
    func makeView() -> UIView{
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }
    func sizeMakeLabel(withText text: String, size: CGFloat) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .blue
        label.font = UIFont.systemFont(ofSize: size)
        label.text = text
        
        return label
    }
    
}

