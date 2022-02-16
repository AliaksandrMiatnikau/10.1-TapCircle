

import UIKit

class ViewController: UIViewController {
    
    var screenHeight = UIScreen.main.bounds.height
    var screenWidth = UIScreen.main.bounds.width
    var onRoundView = UIView()
    var circleSize = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(createRoundView))
        self.view.addGestureRecognizer(gestureRecognizer)
        
        let gestureRecognizerTwo = UITapGestureRecognizer(target: self, action: #selector(hideRoundView))
        self.onRoundView.addGestureRecognizer(gestureRecognizerTwo)
    }
    
    func getRandomColour() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                       alpha: 1.0)
    }
    
    
    @objc func createRoundView(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: self.view)
        onRoundView.frame = CGRect(x: (Int(location.x) - circleSize / 2),                                                           y: (Int(location.y) - circleSize / 2),
                                   width: circleSize,
                                   height: circleSize)
        onRoundView.backgroundColor = getRandomColour()
        onRoundView.layer.cornerRadius = onRoundView.frame.size.width / 2
        view.addSubview(onRoundView)
    }
    
    @objc func hideRoundView() {
        onRoundView.removeFromSuperview()
        
    }
}

