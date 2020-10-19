//
//  HomeCoordinator.swift
//  PocCoordinator
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 16/10/20.
//

import UIKit

class HomeCoordinator: Coordinator {

    var homeViewModel: HomeViewModel?
    var view: HomeVC?
    var navigation: UINavigationController?
    
    init() {
        view = HomeVC.instantiate()
        homeViewModel = HomeViewModel(coordinator: self)
        view?.viewModel = homeViewModel
        navigation = UINavigationController()
//        view?.viewModel?.delegate = self
    }
    
    
    func stop() {

    }
 
}

extension HomeCoordinator: HomeViewModelDelegate {

    
    
}
