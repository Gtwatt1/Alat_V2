//
//  LoginController.swift
//  Alat_V2
//
//  Created by Zone 3 on 7/28/17.
//  Copyright © 2017 Eva. All rights reserved.
//

import UIKit


class LoginController : UIViewController{

    override func viewDidLoad() {
        setupViews()
    }

    let emailTv: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = " Email Address"
        text.font = UIFont.systemFont(ofSize: 24)
        text.backgroundColor = nil
        text.attributedPlaceholder = NSAttributedString(string: "Email Address",
                                                      attributes: [NSForegroundColorAttributeName: UIColor.white])
        text.textColor = .white
        text.textAlignment = .left
        return text
    }()
    
    let emailTvDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 0.7)
        return view
    }()
    
    
    let passwordTv: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = " Password "
        text.font = UIFont.systemFont(ofSize: 24)
        text.backgroundColor = nil
        text.attributedPlaceholder = NSAttributedString(string: "Password",
                                                      attributes: [NSForegroundColorAttributeName: UIColor.white])
        text.textColor = .white
        text.textAlignment = .left
        return text
    }()
    
    let passwordTvDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 0.7)
        return view
    }()
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "gradient_background")
        return imageView
    }()

    let descriptionText: UITextView = {
        let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Welcome Back..."
        text.font = UIFont.systemFont(ofSize: 56)
        text.isEditable = false
        text.backgroundColor = nil
        text.textColor = .white
        text.textAlignment = .left
        return text
    }()
    
    let rightIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "phone")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let leftIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Alat-icon-white")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    
    let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Start", for: .normal)
        button.setTitleColor(.red , for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.layer.cornerRadius = 7.5
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.addTarget(self, action: #selector(handleStart), for: .touchUpInside)
        return button
    }()
    
    let forgetLabel : UILabel = {
        let label = UILabel()
        label.text = "Forgot Password?"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()

    
    func setupViews(){
        view.addSubview(backgroundImageView)
        view.addSubview(passwordTv)

        view.addSubview(passwordTvDivider)
        view.addSubview(emailTvDivider)
        view.addSubview(emailTv)
        
        view.addSubview(descriptionText)
        view.addSubview(rightIconImageView)
        view.addSubview(leftIconImageView)
        view.addSubview(startButton)
        view.addSubview(forgetLabel)


        
        
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        backgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        leftIconImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 48).isActive = true
        leftIconImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 48).isActive = true
        leftIconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        leftIconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        rightIconImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -48).isActive = true
        rightIconImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 48).isActive = true
        rightIconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        rightIconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        descriptionText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionText.topAnchor.constraint(equalTo: leftIconImageView.bottomAnchor, constant: 48).isActive = true
        descriptionText.heightAnchor.constraint(equalToConstant: 180).isActive = true
        descriptionText.widthAnchor.constraint(equalToConstant: 240).isActive = true
        
        emailTv.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTv.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        emailTv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        emailTv.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48).isActive = true
        
        emailTvDivider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emailTvDivider.topAnchor.constraint(equalTo: emailTv.bottomAnchor).isActive = true
        emailTvDivider.heightAnchor.constraint(equalToConstant: 1).isActive = true
        emailTvDivider.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48).isActive = true
        
        
        passwordTv.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTv.topAnchor.constraint(equalTo: emailTvDivider.bottomAnchor, constant: 48).isActive = true
        passwordTv.heightAnchor.constraint(equalToConstant: 30).isActive = true
        passwordTv.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48).isActive = true
        
        passwordTvDivider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTvDivider.topAnchor.constraint(equalTo: passwordTv.bottomAnchor).isActive = true
        passwordTvDivider.heightAnchor.constraint(equalToConstant: 1).isActive = true
        passwordTvDivider.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48).isActive = true
        
        forgetLabel.leftAnchor.constraint(equalTo: passwordTv.leftAnchor).isActive = true
        forgetLabel.topAnchor.constraint(equalTo: passwordTv.bottomAnchor,constant: 4).isActive = true
        forgetLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        forgetLabel.widthAnchor.constraint(equalToConstant: 64).isActive = true
        
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startButton.topAnchor.constraint(equalTo: passwordTv.bottomAnchor, constant: 72).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        startButton.widthAnchor.constraint(equalTo: passwordTvDivider.widthAnchor).isActive = true
        

        
    
    }

}
