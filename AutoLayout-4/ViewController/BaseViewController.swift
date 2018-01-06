//
//  BaseViewController.swift
//  AutoLayout-4
//
//  Created by Facheng Liang  on 06/01/2018.
//  Copyright © 2018 Facheng Liang . All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    let subView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
       
        subView.translatesAutoresizingMaskIntoConstraints = false
        subView.backgroundColor = .blue
        view.addSubview(subView)
        subView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        subView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        subView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        subView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(backAction))
        subView.addGestureRecognizer(tap)
    }
    
    @objc private func backAction() {
        dismiss(animated: true, completion: nil)
    }
    
}
