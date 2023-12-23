//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Антон Закиров on 19.12.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addAvatar()
        addExitButton()
        addUserDescription()
    }
    
    private func addAvatar() {
        let imageView = UIImageView(image: UIImage(named: "profile"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.layer.cornerRadius = 35
        imageView.clipsToBounds = true
    }
    
    private func addExitButton() {
        let button = UIButton()
        button.setImage(UIImage(named: "logout_button"), for: .normal)
        
        button.tintColor = UIColor(named: "YP Red")
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
    }
    
    private func addUserDescription() {
        let nameLabel = UILabel()
        let linkLabel = UILabel()
        let helloLabel = UILabel()

        nameLabel.text = "Антон Закиров"
        linkLabel.text = "@zakirov"
        helloLabel.text = "Всем 👋 привет"
        
        nameLabel.textColor = UIColor(named: "YP White")
        linkLabel.textColor = UIColor(named: "YP White")
        helloLabel.textColor = UIColor(named: "YP White")
        
        nameLabel.font = UIFont.systemFont(ofSize: 23)
        linkLabel.font = UIFont.systemFont(ofSize: 13)
        helloLabel.font = UIFont.systemFont(ofSize: 13)

        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        linkLabel.translatesAutoresizingMaskIntoConstraints = false
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(nameLabel)
        view.addSubview(linkLabel)
        view.addSubview(helloLabel)

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 98),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            linkLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            linkLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            helloLabel.topAnchor.constraint(equalTo: linkLabel.bottomAnchor, constant: 8),
            helloLabel.leadingAnchor.constraint(equalTo: linkLabel.leadingAnchor),
        ])
    }
}
