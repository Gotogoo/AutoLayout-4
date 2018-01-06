//
//  ViewController.swift
//  AutoLayout-4
//
//  Created by Facheng Liang  on 06/01/2018.
//  Copyright © 2018 Facheng Liang . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickButton1(_ sender: UIButton) {
        let viewController = FirstViewController()
        show(viewController, sender: nil)
    }

    @IBAction func clickButton2(_ sender: UIButton) {
        let viewController = SecondViewController()
        let navgationController = UINavigationController(rootViewController: viewController)
        show(navgationController, sender: nil)
    }

}


