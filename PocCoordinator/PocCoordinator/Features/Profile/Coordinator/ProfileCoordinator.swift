//
//  ProfileCoordinator.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 16/10/20.
//

import UIKit


class ProfileCoordinator: Coordinator {
    
    var navigation: UINavigationController?
    var view: ProfileVC?
    
    init() {
        view = ProfileVC.instantiate()
        if navigation == nil {
            navigation = UINavigationController()
        }
    }
    
    
    func stop() {
        
    }
    
}
