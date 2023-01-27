//
//  ViewController.swift
//  Dicee
//
//  Created by Андрей Фроленков on 20.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.image = #imageLiteral(resourceName: "GreenBackground")
        return imageView
    }()
    lazy var rollButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Roll", for: .normal)
        button.addTarget(self, action: #selector(rollButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        setupView()
    }
    
    func setupView() {
        backgroundView.frame = view.frame
        self.backgroundView.addSubview(rollButton)
        self.view.addSubview(backgroundView)
        NSLayoutConstraint.activate([
            rollButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            rollButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    @objc func rollButtonTapped() {
        
        print("good")
    }
    
    
}

