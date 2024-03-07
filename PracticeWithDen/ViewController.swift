//
//  ViewController.swift
//  PracticeWithDen
//
//  Created by Kaiten Aiko on 07.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
// MARK: - Outlets -
    
    let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "man")
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
    
// MARK: - Functions -

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
// MARK: - Setup -
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 0.987, green: 0.987, blue: 0.987, alpha: 1)
    }
    
    private func setupHierarchy() {
        view.addSubview(imageView)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 128),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 97),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -97),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -433),
            imageView.heightAnchor.constraint(equalToConstant: 251)
        ])
    }
}

