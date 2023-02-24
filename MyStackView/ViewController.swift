//
//  ViewController.swift
//  MyStackView
//
//  Created by Julieta White on 2/23/23.
//

import UIKit

class ViewController: UIViewController {
    private let juliLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🤑 New Purchases 🤑"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        return label
        
    }()
    private var juliStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(juliLabel)
        view.addSubview(juliStackView)
        
        NSLayoutConstraint.activate([
            juliLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            juliLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            juliLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            juliStackView.topAnchor.constraint(equalTo: juliLabel.bottomAnchor, constant: 32),
            juliStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            juliStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        ])
        
        ["1.98$", "2.98$", "15.99$", "23.99$"].forEach{price in let button = UIButton(type: .system)
            var configuration = UIButton.Configuration.borderedTinted()
            configuration.title = price
            configuration.subtitle = "Look these Prices!"
            configuration.image = UIImage(systemName: "dollarsign")
            configuration.imagePadding = 12
            configuration.baseBackgroundColor = .systemGray
            button.configuration = configuration
            
            juliStackView.addArrangedSubview(button)
        }
    }
}

