//
//  ViewController.swift
//  Buggy
//
//  Created by Edwin Cardenas on 5/23/25.
//

import UIKit

class ViewController: UIViewController {

    var simpleButton: UIButton = {
        let button = UIButton(configuration: .filled())
        
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        
        button.setTitle("Tap me!", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func loadView() {
        view = UIView()
        
        view.backgroundColor = .white
        
        setupUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func setupUI() {
        view.addSubview(simpleButton)
        
        NSLayoutConstraint.activate([
            simpleButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            simpleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func badMethod() {
        let array = NSMutableArray()
        
        for i in 0..<10 {
            array.insert(i, at: i)
        }
        
        for _ in 0..<10 {
            array.removeObject(at: 0)
        }
    }
}

// MARK: - Actions

extension ViewController {
    @objc func buttonTapped(_ sender: UIButton) {
        print("DEBUG: Method \(#function) in file \(#file) at line \(#line) was called.")
        
        badMethod()
    }
}
