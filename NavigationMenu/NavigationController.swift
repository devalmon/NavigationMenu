//
//  NavigationController.swift
//  NavigationMenu
//
//  Created by Alexey Baryshnikov on 23.11.2020.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        
    }
    private func setup() {
        let vc = ViewController()
        viewControllers = [vc]
    }

}
