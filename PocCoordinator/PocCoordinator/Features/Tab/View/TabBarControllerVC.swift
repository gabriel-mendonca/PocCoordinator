//
//  TabBarControllerVC.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 16/10/20.
//

import UIKit

class TabBarControllerVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = .white
    }
}
