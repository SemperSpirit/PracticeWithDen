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
    
    private lazy var customView: UIView = {
            let view = UIView()
            view.backgroundColor = .white
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
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
        customView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.07).cgColor
        customView.layer.shadowOffset = CGSize(width: 0, height: 3)
        customView.layer.shadowOpacity = 1
        customView.layer.shadowRadius = 36
    }
    
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(customView)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 128),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 97),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -97),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -433),
            imageView.heightAnchor.constraint(equalToConstant: 251)
        ])
        
        NSLayoutConstraint.activate([
            customView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -31),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            customView.widthAnchor.constraint(equalToConstant: 345),
            customView.heightAnchor.constraint(equalToConstant: 270)
        ])
    }
}

