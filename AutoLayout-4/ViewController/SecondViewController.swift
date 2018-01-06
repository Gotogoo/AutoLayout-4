//
//  SecondViewController.swift
//  AutoLayout-4
//
//  Created by Facheng Liang  on 06/01/2018.
//  Copyright © 2018 Facheng Liang . All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        NotificationCenter.default.addObserver(self, selector: #selector(orientationDidChange), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    private func setupUI() {
        let navigationBar = navigationController?.navigationBar

        title = "我是红色"
        let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.red]
        navigationBar?.titleTextAttributes = textAttributes
        
        navigationBar?.shadowImage = UIImage()
        navigationBar?.barTintColor = .yellow
        navigationBar?.backgroundColor = .yellow
    }
    
    @objc private func orientationDidChange() {
        switch UIDevice.current.orientation {
        case .portrait:
            navigationController?.setNavigationBarHidden(false, animated: true)
        case .landscapeLeft, .landscapeRight:
            navigationController?.setNavigationBarHidden(true, animated: true)
        default:
            break
        }
    }

}
