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
    
    let label: UILabel = {
           let label = UILabel()
           label.text = "Synth polaroid"
           label.textColor = .black
           label.textAlignment = .center
           label.translatesAutoresizingMaskIntoConstraints = false
           label.font = UIFont.boldSystemFont(ofSize: 24)
           return label
       }()
    
    let text: UITextView = {
        let text = UITextView()
        text.text = "In the tumultuous business of cutting-in and attending to a whale, there."
        text.textColor = .black
        text.font = UIFont.systemFont(ofSize: 14)
        text.textAlignment = .center
        text.isEditable = false
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("I'm interested", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.titleEdgeInsets = UIEdgeInsets(top: 15, left: 14.91, bottom: 15, right: 14.12)
        button.backgroundColor = UIColor(red: 1, green: 0.2, blue: 0.47, alpha: 1)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        customView.addSubview(label)
        customView.addSubview(text)
        customView.addSubview(button)
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
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: customView.topAnchor, constant: 34.5),
            label.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 88.5),
            label.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -87.5),
            label.widthAnchor.constraint(equalToConstant: 169),
            label.heightAnchor.constraint(equalToConstant: 28)
            ])
        
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: customView.topAnchor, constant: 80.5),
            text.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 29),
            text.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -29),
            text.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -143.5),
            text.widthAnchor.constraint(equalToConstant: 287),
            text.heightAnchor.constraint(equalToConstant: 46)
            ])
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 45),
            button.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -45),
            button.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -45),
            button.widthAnchor.constraint(equalToConstant: 255),
            button.heightAnchor.constraint(equalToConstant: 48)
           ])
    }
    
    @objc func buttonTapped() {
         print("That's good!")
     }
}

