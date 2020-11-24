//
//  ViewController.swift
//  NavigationMenu
//
//  Created by Alexey Baryshnikov on 23.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
        setupNavBar()
        label = setupNumberToDisplay()
        label.text = ""
        
    }
    
    private func setupVC() {
        self.view.backgroundColor = UIColor.white
    }
    
    private func setupNavBar() {
        let menu = UIBarButtonItem(image: UIImage(systemName: "filemenu.and.selection"), style: .plain, target: self, action: #selector(didTapped))
        menu.tintColor = UIColor.gray
        
        navigationItem.leftBarButtonItem = menu
        self.title = "Заголовок"
        
    }
    
    private func setupNumberToDisplay() -> UILabel {
        let label = UILabel()
        label.font = label.font.withSize(80)

        //layout label
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        
        return label
    }
    
    @objc private func didTapped() {
        let menuVC = MenuItemsController()
        menuVC.delegate = self
        self.present(menuVC, animated: true, completion: nil)
    }

}

extension ViewController: MenuItemDelegate {
    func update(_ text: String) {
        DispatchQueue.main.async {
            self.label.text = text
        }
    }
}
